FROM node:18-alpine3.15 AS backend

RUN apk add --update --no-cache curl g++ git make openssh-client python2

RUN mkdir -p ~/.ssh/ && ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

COPY ./ /app/

WORKDIR /app

# install produciton deps
RUN npm install --omit=dev

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

FROM backend AS frontend

# installs dev dependencies
RUN npm install

# runs webpack build
RUN npm run build


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 


FROM node:18-alpine3.15

WORKDIR /app

ENV NODE_ENV=production

COPY . /app/

COPY --from=backend /app/node_modules /app/node_modules

COPY --from=frontend /app/.next /app/.next

RUN ln -s /app /microreact

CMD [ "npm", "start" ]
# About Microreact

## What is Microreact?

Microreact allows you to upload, visualise and explore any combination of clustering (trees, networks), geographic (map) and temporal (timeline) data. Other metadata variables are displayed in a table. You can specify colours and/or shapes to display on the map, tree and/or timeline. A permanent URL is produced for you to share your Microreact or a `.microreact` file can be downloaded for sharing with collaborators

The code is provided under the MIT licence. It is provided as is and we do not have the resource to provide assistance for installation or enhancing features using the source code.

## Citing Microreact

If you cite Microreact in a publication please use the reference [Microreact: visualizing and sharing data for genomic epidemiology and phylogeography](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5320705/pdf/mgen-02-93.pdf)

## Forking Microreact

You are not granted rights or licenses to the trademarks of the CGPS or any party, including without limitation the Microreact name or logo.
If you fork the project and publish it please use another name.


## Developer Notice
Pull submodules 
`git submodule update --init --recursive` 

This fork is used by the SOFI application and is used to build the docker image that the SOFI application depends on. 

There is no changes to the microreact code base, the solo purpose of the fork is to have something to build the Docker image from. 

The repo contains a docker compose script that can be used to start microreact without any dependency to SOFI. It is running on https://ms.local so add it to your hostfile. The SSL cert is created by Caddy and is af selfsigned cert (so you will see a trust error)

To create a project data can be imported from: https://docs.google.com/spreadsheets/d/e/2PACX-1vQt0l5CF2hyN3ajkVS_Lx5zPwi0eZ1bD675FPKyt2tKoYPkNynfSLYw6WOi_j0MQTgSsazlfrxOrGtP/pub?gid=0&single=true&output=csv 
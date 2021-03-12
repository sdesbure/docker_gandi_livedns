# GANDI Live DNS Docker

Docker image to automatically update Gandi DNS with the current IP adress.
Script "stolen" here: 
<https://github.com/sdesbure/rpi-docker-images/blob/master/gandi/updatedns.sh.v5>

## Docker image

[![image information](https://images.microbadger.com/badges/image/sdesbure/gandilive.svg)](
https://microbadger.com/images/sdesbure/gandilive
"Get your own image badge on microbadger.com")
[![version information](https://images.microbadger.com/badges/version/sdesbure/gandilive.svg)](
https://microbadger.com/images/sdesbure/gandilive
"Get your own version badge on microbadger.com")
[![circle ci status](https://circleci.com/gh/sdesbure/docker_gandilive.svg?style=shield)](
https://app.circleci.com/pipelines/github/sdesbure/docker_gandilive
"view on Circle CI")

## How to use

### Pull image

```shell
docker pull sdesbure/gandilive
```

## Run container

This image contains :
- the python Gandi CLI for the v4 version
- curl and jq to access Gandi REST API for the v5 version

# Usage
Use this image to update a DNS record to the current IP of the host: 

```shell
docker run -e GANDI_API_KEY="YOUR GANDI API KEY" \
           -e GANDI_HOST="THE HOST NAME IN THE GANDI DOMAIN" \
           -e GANDI_DOMAIN="YOUR GANDI DOMAIN" \
           --name gandi sdesbure/gandilive:latest
```

Every 5 minutes, the image will automatically check the current IP address of the host and, if necessary, update the DNS.


## Install Docker

* [Mac](https://docs.docker.com/docker-for-mac/)
* OR...
* [Ubuntu](https://docs.docker.com/engine/installation/linux/ubuntu/)
* OR...
* [Windows](https://docs.docker.com/docker-for-windows/) Requires Windows 10

## Dev

* $ docker build -t emberebapp:dev -f Dockerfile.dev . There is a period on the end
* $ docker run --rm -p 4200:4200 -v $(pwd):/code emberebapp:dev

## Prod

* $ `docker build -t emberebapp:prod -f Dockerfile .`
* $ `docker run -p 4200:4200 emberebapp:prod`
* $ eb deploy

## Validation

* Should see the little ember rate page when browsing to {domain}:4200.
* For example, localhost:4200
* For example, http://emberebapp-dev.us-east-1.elasticbeanstalk.com/

## Refs

## Install Docker

* [Mac](https://docs.docker.com/docker-for-mac/)
* OR...
* [Ubuntu](https://docs.docker.com/engine/installation/linux/ubuntu/)
* OR...
* [Windows](https://docs.docker.com/docker-for-windows/) Requires Windows 10

## Dev 

* $ `docker build -t emberebapp:dev -f Dockerfile .` Don't forget the PERIOD at the end
* $ `docker run -p 4200:4200 emberebapp:dev`

## Prod 

* $ eb deploy

## Validation

* Should see the little ember rate page when browsing to {domain}:4200. 
* For example, localhost:4200
* For example, http://railsebapp-dev.us-east-1.elasticbeanstalk.com/

## Refs



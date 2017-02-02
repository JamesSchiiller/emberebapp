FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g ember-cli@2.9.1
RUN npm install -g bower@1.8.0
apt-get install -y autoconf automake build-essential python-dev &&\
    git clone https://github.com/facebook/watchman.git &&\
    cd watchman &&\
    git checkout v4.7.0 &&\
    ./autogen.sh &&\
    ./configure &&\
    make &&\
    make install

ADD . /code
WORKDIR /code

RUN node -v
RUN npm -v
RUN ember -v
RUN bower -v
RUN watchman -v

EXPOSE 4200
CMD ["ember", "s"]

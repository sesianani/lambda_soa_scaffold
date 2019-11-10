FROM ubuntu:latest

RUN apt-get update -y && apt-get install --yes python3-pip

# install node
RUN apt-get install --yes nodejs npm

# install python
RUN apt-get --yes install python3.7

# install serverless
RUN npm install serverless -g

# install other utils
RUN apt-get update -y && apt-get install -y screen

RUN mkdir /src

WORKDIR /src

ADD requirements.txt /src/

RUN pip3 install -r requirements.txt

ADD . /src/
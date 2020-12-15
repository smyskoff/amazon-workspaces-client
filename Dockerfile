FROM ubuntu:bionic

RUN apt-get update && apt-get install -qq -y wget gnupg gnupg2 gnupg1
RUN wget -q -O - https://workspaces-client-linux-public-key.s3-us-west-2.amazonaws.com/ADB332E7.asc | apt-key add -
RUN echo "deb [arch=amd64] https://d3nt0h4h6pmmc4.cloudfront.net/ubuntu bionic main" | tee /etc/apt/sources.list.d/amazon-workspaces-clients.list
RUN apt-get update
RUN apt-get install -y workspacesclient

ENTRYPOINT /opt/workspacesclient/workspacesclient

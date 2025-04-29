FROM ubuntu:jammy

RUN apt-get update && apt-get install -y wget
RUN wget -q -O - https://workspaces-client-linux-public-key.s3-us-west-2.amazonaws.com/ADB332E7.asc | tee /usr/share/keyrings/amazon-workspaces-clients.gpg > /dev/null
RUN echo "deb [trusted=yes arch=amd64] https://d3nt0h4h6pmmc4.cloudfront.net/ubuntu jammy main" | tee /etc/apt/sources.list.d/amazon-workspaces-clients.list
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y workspacesclient
RUN apt-get install -y libcanberra-gtk-module libcanberra-gtk3-module packagekit-gtk3-module
RUN apt-get install -y libgtk-3-dev libwayland-client0 libwayland-egl1 libwayland-cursor0 

ENTRYPOINT /usr/bin/workspacesclient


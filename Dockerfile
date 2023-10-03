FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]
RUN apt-get update;
RUN apt-get install -y wget curl git vim net-tools pip;
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata;
RUN git clone --recursive https://github.com/breenmachine/httpscreenshot /root/httpscreenshot;
RUN cd /root/httpscreenshot && ./install-dependencies.sh;
WORKDIR "/root/httpscreenshot"
RUN pip install selenium==4.8.0
RUN apt install -y firefox

FROM jupyter/pyspark-notebook:latest

USER root

COPY apt.conf /etc/apt/apt.conf
COPY spark-defaults.conf /usr/local/spark-2.4.5-bin-hadoop2.7/conf/spark-defaults.conf

RUN apt-get -y update
RUN apt-get -y install apt-utils mc tmux htop git

EXPOSE 8888/tcp
EXPOSE 8888/udp
EXPOSE 4040/tcp
EXPOSE 4040/udp

ENV NB_USER dlab-user
ENV NB_GID 1001
ENV NB_UID 1001
ENV XDG_CACHE_HOME /home/dlab-user/.cache
ENV HOME /home/dlab-user


RUN useradd -m -s /bin/bash $NB_USER
RUN usermod -aG sudo $NB_USER
RUN echo "$NB_USER  ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER $NB_USER
WORKDIR $HOME

CMD jupyter notebook

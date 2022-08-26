FROM ubuntu

LABEL maintainer="Ilija Vukotic <ivukotic@cern.ch>"

RUN apt-get update 

COPY *.sh /
RUN install_bwa.sh
RUN install_htslib.sh
RUN install_samtools.sh


# RUN apt-get install -y nmap
# USER root


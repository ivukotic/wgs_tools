FROM ubuntu

LABEL maintainer="Ilija Vukotic <ivukotic@cern.ch>"

RUN apt-get update 
RUN apt-get install -y git build-essential curl
RUN apt-get install -y zlib1g-dev liblzma-dev libbz2-dev autoconf libncurses-dev libcurl4-nss-dev

RUN mkdir REFERENT
# RUN curl http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/phase2_reference_assembly_sequence/hs37d5.fa.gz -o /REFERENT/hs37d5.fa.gz

RUN mkdir TOOLS
COPY *.sh /TOOLS/
RUN /TOOLS/install_bwa.sh
RUN /TOOLS/install_htslib.sh
RUN /TOOLS/install_samtools.sh

RUN export PATH=$PATH:/TOOLS/bwa:/TOOLS/samtools
# USER root


FROM nfcore/base:1.14
LABEL authors="Barry Digby"

RUN apt-get update; apt-get clean all;

RUN apt-get install --yes build-essential \
                        gcc-multilib \
                        apt-utils \
                        zip \
                        unzip

RUN wget --no-check-certificate https://github.com/orzechoj/circRNA_finder/archive/v1.2.tar.gz
RUN tar -xvf v1.2.tar.gz
RUN chmod 777 circRNA_finder-1.2/*.* && cp circRNA_finder-1.2/*.* /usr/bin

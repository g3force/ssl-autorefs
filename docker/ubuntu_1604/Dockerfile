FROM ubuntu:16.04
RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/g3force/ssl-autorefs.git /ssl-autorefs
WORKDIR /ssl-autorefs
RUN git submodule update --init
RUN ./installDeps.sh
RUN ./build.sh

FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    cmake \
    libeigen3-dev \
    python3-dev

RUN git clone https://github.com/hallfjonas/LCQPow.git /
RUN cd /LCQPow
RUN git submodule update --init --recursive

ENTRYPOINT [ "build.sh" ]
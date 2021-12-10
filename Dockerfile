FROM ubuntu:18.04

RUN apt-get install -y git \
    python3-dev \
    build-essentials

RUN git clone https://github.com/hallfjonas/LCQPow.git
RUN cd LCQPow
RUN git submodule update --init --recursive

RUN echo "HELLO World"

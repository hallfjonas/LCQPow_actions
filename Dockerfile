# Start from ubuntu:18.04 base image
FROM ubuntu:18.04

# Install 
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    libeigen3-dev \
    python3-dev \
    wget

# Install cmake 3.13
RUN wget http://www.cmake.org/files/v3.13/cmake-3.13.0.tar.gz
RUN tar xf cmake-3.13.0.tar.gz
RUN cd cmake-3.13.0; ./configure; make; make install

# Clone the Project repo
RUN git clone https://github.com/hallfjonas/LCQPow.git /LCQPow
WORKDIR /LCQPow
RUN git submodule update --init --recursive

# Set the build script as entrypoint
ENTRYPOINT [ "/LCQPow/test.sh" ]

# syntax = docker/dockerfile:1.0-experimental
FROM centos:centos6 as build
MAINTAINER Tutu Ajayi "ajayi@umich.edu"

# # install gcc 8
RUN yum -y install centos-release-scl && \
    yum -y install devtoolset-8 devtoolset-8-libatomic-devel
ENV CC=/opt/rh/devtoolset-8/root/usr/bin/gcc \
    CPP=/opt/rh/devtoolset-8/root/usr/bin/cpp \
    CXX=/opt/rh/devtoolset-8/root/usr/bin/g++ \
    PATH=/opt/rh/devtoolset-8/root/usr/bin:$PATH \
    LD_LIBRARY_PATH=/opt/rh/devtoolset-8/root/usr/lib64:/opt/rh/devtoolset-8/root/usr/lib:/opt/rh/devtoolset-8/root/usr/lib64/dyninst:/opt/rh/devtoolset-8/root/usr/lib/dyninst:/opt/rh/devtoolset-8/root/usr/lib64:/opt/rh/devtoolset-8/root/usr/lib:$LD_LIBRARY_PATH

RUN yum install -y wget git pcre-devel tcl-devel tk-devel bison flex \
                   python-devel libxml2-devel libxslt-devel zlib-static glibc-static

RUN wget http://prdownloads.sourceforge.net/swig/swig-4.0.0.tar.gz && \
    tar -xf swig-4.0.0.tar.gz && \
    cd swig-4.0.0 && \
    ./configure && \
    make && \
    make install


# Installing cmake for build dependency
RUN wget https://cmake.org/files/v3.14/cmake-3.14.0-Linux-x86_64.sh && \
    chmod +x cmake-3.14.0-Linux-x86_64.sh  && \
    ./cmake-3.14.0-Linux-x86_64.sh --skip-license --prefix=/usr/local

# Installing boost for build dependency
RUN wget https://dl.bintray.com/boostorg/release/1.68.0/source/boost_1_68_0.tar.bz2 && \
    tar -xf boost_1_68_0.tar.bz2 && \
    cd boost_1_68_0 && \
    ./bootstrap.sh && \
    ./b2 install

# download public key for github.com
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN git clone https://github.com/The-OpenROAD-Project/pdn.git

RUN mkdir -p pdn/src/PdnPinDumper/build
WORKDIR pdn/src/PdnPinDumper/build

RUN cmake ..
RUN make

RUN mkdir -p /build/bin/ && \
    cp PdnPinDumper /build/bin

RUN mkdir -p /build/pdn/ && \
    cp -pr /pdn/src/scripts /build/pdn

RUN date +"Build Timestamp: %Y-%m-%d_%H-%M-%S" > /build/pdn.version
RUN git rev-parse HEAD >> /build/pdn.version
RUN tar -czf /build.tar.gz /build


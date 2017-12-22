FROM ubuntu:16.04

RUN apt-get update && apt-get -qq -yy install cmake g++

RUN apt-get -qq -yy install libboost-all-dev
RUN apt-get -qq -yy install wget

RUN  cd /usr/src && wget https://github.com/google/googletest/archive/release-1.8.0.tar.gz


RUN cd /usr/src && tar xf release-1.8.0.tar.gz && cd /usr/src/googletest-release-1.8.0
RUN cd /usr/src/googletest-release-1.8.0 && cmake -DBUILD_SHARED_LIBS=ON . && make

ENV GTEST_INCLUDE_DIR=/usr/src/googletest-release-1.8.0/googletest/include/
ENV GTEST_LIBRARY=/usr/src/googletest-release-1.8.0/googlemock/gtest/libgtest_main.so
ENV GTEST_MAIN_LIBRARY=/usr/src/googletest-release-1.8.0/googlemock/gtest/libgtest.so


RUN useradd -ms /bin/bash koyla

USER koyla
WORKDIR /home/koyla
RUN mkdir /home/koyla/homework

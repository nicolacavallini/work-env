FROM ubuntu:18.04
#10.10.0.12:5000/henesis/pantobot3d_pcl:1.0.0

RUN apt update
RUN apt install -y -qq git g++ wget

# RUN apt-get install -y zip
# RUN apt-get -y install valgrind
# RUN apt-get -y install vim
#
# ENV src_dir /opt/src
#
# RUN mkdir ${src_dir}
#
# RUN apt-get install -y make
# ENV cmake_version 3.12.3
#
# RUN cd ${src_dir} && wget https://cmake.org/files/v3.12/cmake-${cmake_version}.tar.gz && \
#     tar -xzvf cmake-${cmake_version}.tar.gz && \
#     cd cmake-${cmake_version} && \
#     ./bootstrap && make && make install


RUN useradd -ms /bin/bash koyla

RUN mkdir /home/koyla/homework

USER koyla
WORKDIR /home/koyla

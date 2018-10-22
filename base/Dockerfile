FROM ubuntu:16.04
#10.10.0.12:5000/henesis/pantobot3d_pcl:1.0.0

RUN apt-get update
RUN apt-get install -y git g++ wget

RUN apt-get install -y zip
RUN apt-get -y install valgrind
RUN apt-get -y install vim

ENV src_dir /opt/src

RUN mkdir ${src_dir}

RUN apt-get install -y make
ENV cmake_version 3.12.3

RUN cd ${src_dir} && wget https://cmake.org/files/v3.12/cmake-${cmake_version}.tar.gz && \
    tar -xzvf cmake-${cmake_version}.tar.gz && \
    cd cmake-${cmake_version} && \
    ./bootstrap && make && make install


#RUN useradd -ms /bin/bash koyla

# RUN mkdir /home/koyla/homework
# # RUN cd /home/koyla/homework && mkdir src && cd src/ && \
# #     wget "https://github.com/Itseez/opencv/archive/3.4.1.zip" && \
# #     unzip 3.4.1.zip && \
# #     cd opencv-3.4.1/ && \
# #     mkdir build && \
# #     cd build/ && \
# #     mkdir /home/koyla/homework/usr/ && \
# #     cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/koyla/homework/usr/ .. && \
# #     make -s && make install
#
# USER koyla
# WORKDIR /home/koyla

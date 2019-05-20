FROM cmake:3.12.3
#10.10.0.12:5000/henesis/pantobot3d_pcl:1.0.0

RUN useradd -ms /bin/bash koyla

RUN mkdir /home/koyla/homework
# RUN cd /home/koyla/homework && mkdir src && cd src/ && \
#     wget "https://github.com/Itseez/opencv/archive/3.4.1.zip" && \
#     unzip 3.4.1.zip && \
#     cd opencv-3.4.1/ && \
#     mkdir build && \
#     cd build/ && \
#     mkdir /home/koyla/homework/usr/ && \
#     cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/koyla/homework/usr/ .. && \
#     make -s && make install

USER koyla
WORKDIR /home/koyla

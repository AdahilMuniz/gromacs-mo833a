FROM ubuntu:18.04
#Update System
RUN apt-get update && \
    apt-get install wget -y && \
    apt-get install build-essential libssl-dev -y

#Install CMAKE
RUN wget https://github.com/Kitware/CMake/releases/download/v3.20.0/cmake-3.20.0.tar.gz
RUN tar -zxvf cmake-3.20.0.tar.gz
RUN cd cmake-3.20.0 && ./bootstrap
RUN cd cmake-3.20.0 && make
RUN cd cmake-3.20.0 && make install


#Add gromacs directory from host into the container
ADD ./ ./gromacs
WORKDIR ./gromacs

#Build gromacs in release mode
RUN mkdir build_release
RUN cd build_release && cmake .. -DCMAKE_BUILD_TYPE=Release -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON
RUN cd build_release && make

#Alias
ENV gmx_release=/gromacs/build_release/bin/gmx

#Excute Script
CMD cd ./experiments/ativ-4-exp-1/scripts/ && ./run.sh
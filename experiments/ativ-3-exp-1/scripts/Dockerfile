FROM ubuntu:18.04
#Update System
RUN apt-get update && \
    apt-get install wget -y && \
    apt-get install build-essential libssl-dev -y

#Install CMAKE

#Add gromacs directory from host into the container
ADD ./ ./gromacs
WORKDIR ./gromacs

#Build gromacs in release mode
RUN mkdir build_release
#RUN cd build_release && cmake .. -DCMAKE_BUILD_TYPE=Release -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON
#RUN cd build_release && make

#Build gromacs in debug mode
RUN mkdir build_debug
#RUN cd build_debug && cmake .. -DCMAKE_BUILD_TYPE=Debug -DGMX_BUILD_OWN_FFTW=ON -DREGRESSIONTEST_DOWNLOAD=ON
#RUN cd build_debug && make

#Alias
ENV gmx_release=${PWD}/build_release/bin/gmx
ENV gmx_debug=${PWD}/build_debug/bin/gmx

#Excute Script
CMD echo "Running script ..."

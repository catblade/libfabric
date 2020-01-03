FROM ubuntu:18.04
COPY ../ /libfabric
RUN cd libfabric && bash autgen.sh && ./configure && make && make install && ldconfig
CMD fi_info
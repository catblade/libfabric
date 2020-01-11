FROM ubuntu:latest as ubuntu-build-libfabric
WORKDIR /libfabric
COPY ./ /libfabric
RUN bash dockerfiles/ubuntu/bootstrap.sh

FROM ubuntu:18.04 AS ubuntu-libfabric
WORKDIR /root
COPY --from=ubuntu-build-libfabric /libfabric/libfabric_libs/ /usr/local/lib/.
COPY --from=ubuntu-build-libfabric /libfabric/util/.libs/ /usr/local/bin/.
RUN ldconfig && ldd /usr/local/bin/fi_info && fi_info
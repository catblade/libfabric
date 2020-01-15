FROM centos:latest as centos-build-libfabric
WORKDIR /libfabric
COPY ./ /libfabric
RUN bash dockerfiles/centos/bootstrap.sh

FROM centos:latest AS centos-libfabric
WORKDIR /root
COPY --from=centos-build-libfabric /libfabric/libfabric_libs/ /usr/local/lib/.
COPY --from=centos-build-libfabric /libfabric/util/.libs/ /usr/local/bin/.
RUN ldconfig && fi_info
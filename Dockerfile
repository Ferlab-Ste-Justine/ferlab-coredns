FROM golang:1.20 as builder

ARG ARCH=amd64
ENV ARCH=$ARCH

WORKDIR /opt

RUN git clone https://github.com/coredns/coredns.git coredns-build

WORKDIR /opt/coredns-build

RUN git checkout v1.11.1

COPY plugin.cfg /opt/plugin.cfg

RUN cp /opt/plugin.cfg /opt/coredns-build/plugin.cfg && make

FROM scratch

COPY --from=builder /opt/coredns-build/coredns /coredns

ENTRYPOINT ["/coredns"]
FROM golang:1.18 as builder

WORKDIR /opt

RUN git clone https://github.com/coredns/coredns.git coredns-build

WORKDIR /opt/coredns-build

RUN git checkout v1.9.1

COPY plugin.cfg /opt/coredns-build/

RUN make

FROM scratch

COPY --from=builder /opt/coredns-build/coredns /coredns

ENTRYPOINT ["/coredns"]
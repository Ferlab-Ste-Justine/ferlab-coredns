#!/bin/sh

(cd ..; docker build -t ferlab-coredns:test .)

docker run -it --rm -v $(pwd):/opt/conf -w /opt/conf --network=host ferlab-coredns:test
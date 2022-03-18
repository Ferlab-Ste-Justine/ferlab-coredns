git clone https://github.com/coredns/coredns.git
(cd coredns; git checkout v1.9.1)
cp plugin.cfg coredns/
(cd coredns; make)
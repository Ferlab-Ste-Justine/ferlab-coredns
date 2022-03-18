git clone https://github.com/coredns/coredns.git coredns-build
(cd coredns-build; git checkout v1.9.1)
cp plugin.cfg coredns-build/
(cd coredns-build; make)
cp coredns-build/coredns .
mkdir linux-amd64
cp coredns linux-amd64/
zip -r linux-amd64.zip linux-amd64
rm -fr coredns-build
rm coredns
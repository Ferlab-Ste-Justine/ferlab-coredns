git clone https://github.com/coredns/coredns.git coredns-build
(cd coredns-build; git checkout v1.9.1)
cp plugin.cfg coredns-build/
(cd coredns-build; make)
cp coredns-build/coredns .
mkdir linux-arm64
cp coredns linux-arm64/
zip -r linux-arm64.zip linux-arm64
rm -fr coredns-build
rm coredns
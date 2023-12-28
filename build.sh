export GOARCH="${GOARCH:-amd64}"

git clone https://github.com/coredns/coredns.git coredns-build
(cd coredns-build; git checkout v1.11.1)
cp plugin.cfg coredns-build/
(cd coredns-build; make)
cp coredns-build/coredns .
mkdir linux-$GOARCH
cp coredns linux-$GOARCH/
zip -r linux-$GOARCH.zip linux-$GOARCH
rm -fr coredns-build
rm coredns
# Description of uprock-webgui-docker
This is essentially only a Dockerfile that updates https://hub.docker.com/r/oneptp/uprock-webgui/ with a newer version

# Steps for obtaining newer version
```
VER="v0.0.16"
wget https://edge.uprock.com/v1/app-download/UpRock-Mining-$VER.deb
ar x UpRock-Mining-$VER.deb
tar --zstd -xvf data.tar.zst
cp ./bin/uprock-mining .
rm -r ./bin ./usr ./data.tar.zst ./control.tar.zst ./UpRock-Mining-$VER*
```

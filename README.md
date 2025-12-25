# Description of uprock-webgui-docker
This is essentially only a Dockerfile that updates https://hub.docker.com/r/oneptp/uprock-webgui/ with a newer version

# Steps for obtaining newer version
```
wget https://edge.uprock.com/v1/app-download/UpRock-Mining-v0.0.15.deb
ar x UpRock-Mining-v0.0.15.deb
tar --zstd -xvf data.tar.zst
cp ./bin/uprock-mining .
rm -r ./bin ./usr ./data.tar.zst ./control.tar.zst ./UpRock-Mining-v0.0.15*
```

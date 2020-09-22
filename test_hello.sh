#wget -O empty/hello https://github.com/docker-library/hello-world/raw/7ecae6978055d2fb6960e2a29d24a2af612e2716/amd64/hello-world/hello
#sh dtccgcc.sh gcc -static hello.c -o empty/hello
rm -f empty/hello
sh dtccgcc.sh gcc -static -Wl,--gc-sections hello.c -o empty/hello
sh dtccgcc.sh strip --strip-all --remove-section=.comment empty/hello
ls -al empty/hello
docker build empty/ -t empty
docker run empty

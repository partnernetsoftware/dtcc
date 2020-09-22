rm -f hello/hello
wget -O hello/hello https://github.com/docker-library/hello-world/raw/7ecae6978055d2fb6960e2a29d24a2af612e2716/amd64/hello-world/hello
chmod +x hello/hello
ls -al hello/hello
docker build hello -t partnernetsoftware/hello_official
docker run partnernetsoftware/hello_official

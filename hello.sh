rm -f hello/hello
sh dtccgcc.sh gcc -static -Wl,--gc-sections hello.c -o hello/hello
sh dtccgcc.sh strip --strip-all --remove-section=.comment hello/hello
ls -al hello/hello
docker build hello/ -t partnernetsoftware/hello
docker run partnernetsoftware/hello

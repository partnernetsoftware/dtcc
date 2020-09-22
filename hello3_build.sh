rm -f hello3/hello3
sh dtccgcc.sh tcc -static -nostdlib hello3.c -o hello3/hello3
ls -al hello3/
docker build hello3/ -t partnernetsoftware/hello3
docker run partnernetsoftware/hello3

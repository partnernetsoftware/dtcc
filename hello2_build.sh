rm -f hello2/hello
#sh dtccgcc.sh gcc -static hello2.c -o hello2/hello
sh dtccgcc.sh tcc -static hello2.c -o hello2/hello
sleep 1

ls -al hello2/hello
sh alpine.sh hello2/hello
docker build hello2/ -t partnernetsoftware/hello2
docker run partnernetsoftware/hello2

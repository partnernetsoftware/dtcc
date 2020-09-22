sh dtccgcc.sh tcc -static -nostdlib hello5.c -o hello5
ls -al hello5
./empty.sh ./hello5
objdump -S hello5

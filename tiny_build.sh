nasm -f bin -o tiny tiny.asm
chmod +x tiny
./tiny
wc -c tiny
./empty.sh ./tiny

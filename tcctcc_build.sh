echo "#define TCC_VERSION \"`head ../tinycc/VERSION`\"" > tinycc/config.h
echo "#ifndef CONFIG_TCCDIR" >> tinycc/config.h
echo "#define CONFIG_TCCDIR \".\"" >> tinycc/config.h
echo "#endif" >> tinycc/config.h

#
#./dtccgcc.sh tcc -static -nostdlib tinycc/tcc.c -o tcctcc tinycc/lib/libtcc1.o /w/alpine/crt1.o -lc
#
#./dtccgcc.sh tcc -static -nostdlib tinycc/tcc.c -o tcctcc /usr/local/lib/tcc/libtcc1.a /usr/lib/crt1.o -lc
./dtcctcc.sh tcc -static -nostdlib tinycc/tcc.c -o tcctcc /usr/local/lib/tcc/libtcc1.a /usr/lib/crt1.o -lc
./tcctcc -vv

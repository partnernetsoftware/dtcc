docker build dtcctcc/ -t partnernetsoftware/dtcctcc
docker images
docker run partnernetsoftware/dtcctcc which tcc
docker run partnernetsoftware/dtcctcc tcc -vv
mkdir -p bin/
#sh dtcctcc.sh sh /w/cp_dtccgcc_to_bin.sh
sh dtcctcc.sh tcc -vv

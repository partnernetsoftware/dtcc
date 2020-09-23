docker build dtccgcc/ -t partnernetsoftware/dtccgcc
docker images
docker run partnernetsoftware/dtccgcc which gcc
docker run partnernetsoftware/dtccgcc gcc -v
docker run partnernetsoftware/dtccgcc which tcc
docker run partnernetsoftware/dtccgcc tcc -vv
#docker run partnernetsoftware/dtccgcc ls -al /root/
mkdir -p bin/
#docker run -v $PWD:/w -w /w partnernetsoftware/dtccgcc sh -c "cp /root/tinycc/tcc /w/bin/ && cp /root/tinycc/*-tcc /w/bin/ && cp /root/tinycc/*.a /w/bin/"
sh dtccgcc.sh sh /w/cp_dtccgcc_to_bin.sh

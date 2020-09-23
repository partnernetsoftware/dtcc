FROM alpine

RUN apk update && apk upgrade \
&& apk add git autoconf build-base linux-headers nasm bash upx cmake \
&& cd /root/ \
&& git clone https://github.com/mirror/tinycc.git --depth 1 \
&& cd tinycc/ \
&& ./configure --config-musl --prefix=/gcctcc && make && make install \
&& export PATH=/gcctcc/bin:$PATH \
&& make clean && ./configure --config-musl --cc=tcc && make cross && make && make install \
&& cp -r /usr/lib/libc.a /root/ \
&& cp -r /usr/lib/crt*.o /root/ \
&& cp -r /usr/include /root/ \
&& apk del upx build-base cmake nasm autoconf git \
&& cp /root/libc.a /usr/lib/ \
&& cp -r /root/include /usr/ \
&& cp /root/*.o /usr/lib/ \
&& rm -rf /gcctcc \
&& rm -rf /root/* \
&& rm -rf /var/cache/apk/* \
&& rm -rf /tmp/* \
&& ln -s /lib/ld-musl-x86_64.so.1 /usr/lib/libc.so \
&& tcc -vv


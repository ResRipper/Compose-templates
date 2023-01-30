FROM ghcr.io/shadowsocks/ssserver-rust:v1.15.2
USER 0
RUN wget https://github.com/teddysun/v2ray-plugin/releases/download/v5.2.0/v2ray-plugin-linux-amd64-v5.2.0.tar.gz
RUN tar -xf v2ray-plugin-linux-amd64-v5.2.0.tar.gz && mv v2ray-plugin_linux_amd64 v2ray-plugin && rm v2ray-plugin-linux-amd64-v5.2.0.tar.gz
RUN mv v2ray-plugin /usr/local/bin/
USER nobody
CMD ["ssserver", "-a", "nobody", "-s", "0.0.0.0:10000", "-m", "${ENCRYPT}", "-k", "${PASSWD}", "--plugin", "${PLUGIN}", "--plugin-opts", "${PLUGIN_OPT}"]
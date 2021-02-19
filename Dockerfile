FROM nginx:1.19.7

# RUN cp /etc/apt/sources.list /etc/apt/sources.list.zybak
# COPY docker_support/sources.list /etc/apt/sources.list

COPY docker_support/node-v12.9.1-linux-x64.tar.gz /usr/local/node-v12.9.1-linux-x64.tar.gz
RUN tar -zxvf /usr/local/node-v12.9.1-linux-x64.tar.gz --strip-components=1 --directory=/usr/local

CMD nginx

EXPOSE 80

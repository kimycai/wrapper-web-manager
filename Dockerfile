FROM debian:stable-slim

ENV args=""

COPY ./rootfs /app/rootfs
COPY ./wrapper /app
WORKDIR /app

CMD ["bash", "-c", "/app/wrapper $args"]

EXPOSE 10020 20020 30020
#与现在的内容不匹配，为做相应修改

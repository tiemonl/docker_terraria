FROM ubuntu:18.04 AS builder

LABEL author="tiemonl"

WORKDIR /opt

RUN apt-get update && apt-get install -y unzip 

ENV VERSION=1401

ADD http://terraria.org/server/terraria-server-${VERSION}.zip terraria-server.zip

RUN unzip terraria-server.zip "${VERSION}/Linux/*" \
    && chmod -R a+rw ${VERSION}/Linux/* \
    && chmod a+x ${VERSION}/Linux/TerrariaServer* \
    && mv ${VERSION}/Linux terraria/



FROM ubuntu:18.04

WORKDIR /opt/terraria

COPY --from=builder /opt/terraria .

ENV MAX_PLAYERS=8 \
    WORLD=Terraria.wld \
    PORT=7777 \
    PASSWORD="" \
    MOTD="" \
    WORLD_SIZE=1 \
    DIFFICULTY=0 \
    WORLD_NAME=Terraria \
    SECURE=1 \
    LANGUAGE="en/US"

ADD config_creator.sh .

VOLUME ["/world"]
EXPOSE 7777

ENTRYPOINT sh config_creator.sh

FROM ubuntu:18.04 AS builder

WORKDIR /opt

RUN apt-get update && apt-get install -y unzip 

ENV VERSION=1410

# Temporarily commented out until link is resolved in terraria.org
# ADD http://terraria.org/server/terraria-server-${VERSION}.zip terraria-server.zip
ADD https://terraria.org/system/dedicated_servers/archives/000/000/040/original/terraria-server-${VERSION}.zip terraria-server.zip

RUN unzip terraria-server.zip "${VERSION}/Linux/*" \
    && chmod -R a+rw ${VERSION}/Linux/* \
    && chmod a+x ${VERSION}/Linux/TerrariaServer* \
    && mv ${VERSION}/Linux terraria/

FROM ubuntu:18.04

LABEL maintainer="tiemonl"

WORKDIR /opt/terraria

COPY --from=builder /opt/terraria .

ENV MAX_PLAYERS=8 \
    WORLD=Terraria.wld \
    PORT=7777 \
    PASSWORD="" \
    SEED="" \
    MOTD="" \
    WORLD_SIZE=1 \
    DIFFICULTY=0 \
    WORLD_NAME=Terraria \
    SECURE=1 \
    LANGUAGE="en-US" \
    SLOW_LIQUIDS=0 \
    ROLLING_BACKUP=2 \
    J_TIME_SPEED=2 \
    J_TIME_TOGGLE=2 \
    J_TIME_DAWN=2 \
    J_TIME_NOON=2 \
    J_TIME_DUSK=2 \
    J_TIME_MIDNIGHT=2 \
    J_GODMODE=2 \
    J_WEATHER_WIND=2 \
    J_WEATHER_WIND_TOGGLE=2 \
    J_WEATHER_RAIN=2 \
    J_WEATHER_RAIN_TOGGLE=2 \
    J_PLACEMENT_RANGE=2 \
    J_DIFFICULTY=2 \
    J_BIOME=2 \
    J_SPAWN_RATE=2

ADD config_creator.sh .

VOLUME ["/world"]
EXPOSE ${PORT}

ENTRYPOINT sh config_creator.sh

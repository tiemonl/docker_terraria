#!/bin/bash
echo "maxplayers="$MAX_PLAYERS > serverconfig.txt
echo "world=/world/"$WORLD >> serverconfig.txt
echo "port="$PORT >> serverconfig.txt
if [ -z "$PASSWORD" ]
then 
    echo "#password=" >> serverconfig.txt
else 
    echo "password="$PASSWORD >> serverconfig.txt
fi
if [ -z "$MOTD" ]
then
    echo "#motd=" >> serverconfig.txt 
else
    echo "motd="$MOTD >> serverconfig.txt
fi
if [ -z "$SEED" ]
then
    echo "#seed=" >> serverconfig.txt 
else
    echo "seed="$SEED >> serverconfig.txt
fi
echo "worldpath=/world" >> serverconfig.txt
echo "autocreate="$WORLD_SIZE >> serverconfig.txt
echo "difficulty="$DIFFICULTY >> serverconfig.txt
echo "worldname="$WORLD_NAME >> serverconfig.txt
echo "banlist=banlist.txt" >> serverconfig.txt
echo "secure="$SECURE >> serverconfig.txt
echo "language="$LANGUAGE >> serverconfig.txt
echo "slowliquids="$SLOW_LIQUIDS >> serverconfig.txt

echo "#Journey mode config: \n" >>serverconfig.txt

echo "journeypermission_time_setspeed="$J_TIME_SPEED >> serverconfig.txt
echo "journeypermission_time_setfrozen="$J_TIME_TOGGLE >> serverconfig.txt
echo "journeypermission_time_setdawn="$J_TIME_DAWN >> serverconfig.txt
echo "journeypermission_time_setnoon="$J_TIME_NOON >> serverconfig.txt
echo "journeypermission_time_setdusk="$J_TIME_DUSK >> serverconfig.txt
echo "journeypermission_time_setmidnight="$J_TIME_MIDNIGHT >> serverconfig.txt
echo "journeypermission_godmode="$J_GODMODE >> serverconfig.txt
echo "journeypermission_wind_setstrength="$J_WEATHER_WIND >> serverconfig.txt
echo "journeypermission_wind_setfrozen="$J_WEATHER_WIND_TOGGLE >> serverconfig.txt
echo "journeypermission_rain_setstrength="$J_WEATHER_RAIN >> serverconfig.txt
echo "journeypermission_rain_setfrozen="$J_WEATHER_RAIN_TOGGLE >> serverconfig.txt
echo "journeypermission_increaseplacementrange="$J_PLACEMENT_RANGE >> serverconfig.txt
echo "journeypermission_setdifficulty="$J_DIFFICULTY >> serverconfig.txt
echo "journeypermission_biomespread_setfrozen="$J_BIOME >> serverconfig.txt
echo "journeypermission_setspawnrate="$J_SPAWN_RATE >> serverconfig.txt

./TerrariaServer.bin.x86_64 -config serverconfig.txt
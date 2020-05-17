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

./TerrariaServer.bin.x86_64 -config serverconfig.txt
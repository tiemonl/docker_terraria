# Terraria Server on Docker

## Usage

### Running

```bash
docker run \
  --name=terraria \
  --restart unless-stopped \
  --detach \
  -it \
  -v <host_volume>:/world \
  -e WORLD=World_Name.wld \
  -e PASSWORD=password \
  -p 7777:7777 \
tiemonl/docker_terraria ./config_creator.sh
```

Make sure to add any environment variables you might need by using `-e <ENV_NAME>=<VALUE>`

### Server commands

Run `docker attach terraria` or `docker attach <name>` replacing `<name>` if you named the container differently. Once attached, type any server commands.
  
| Command | Information |
| ------- | ----------- |
| `help` | Displays a list of commands. |
| `playing` | Shows the list of players. This can be used in-game by typing /playing into the chat. |
| `clear` | Clear the console window. |
| `exit` | Shutdown the server and save. |
| `exit-nosave` | Shutdown the server without saving. |
| `save` | Save the game world. |
| `kick <player name>` | Kicks a player from the server. |
| `ban <player name>`| Bans a player from the server. |
| `password` | Show password. |
| `password <pass>` | Change password. |
| `version` | Print version number. |
| `time` | Display game time. |
| `port` | Print the listening port. |
| `maxplayers` | Print the max number of players. |
| `say <message>` | Send a message to all players. They will see the message in yellow prefixed with `<server></server>` in the chat. |
| `motd` | Print MOTD. |
| `motd <message>` | Change MOTD. |
| `dawn` | Change time to dawn (4:30 AM). |
| `noon` | Change time to noon (12:00 PM). |
| `dusk` | Change time to dusk (7:30 PM). |
| `midnight` | Change time to midnight (12:00 AM). |
| `settle` | Settle all water. |

### ENV variables
------

##### Server/World config

| ENV Variable | Information | Default | Misc |
| ------------ | ----------- | ------- | ---- |
| VERSION | Version of the server to download | `1404` | Other versions: `1333`, `1344`, `1353` |
| MAX_PLAYERS | Sets the max number of players allowed on a server.  Value must be between 1 and 255 | `8` | |
| WORLD | Load a world and automatically start the server. | `Terraria.wld` | Make sure to include `.wld` at the end of the name |
| PORT | Set the port number | `7777` | |
| PASSWORD | Set the server password. |  | |
| SEED | Sets the world seed when using autocreate |  | |
| MOTD | Set the message of the day |  | |
| WORLD_SIZE | Creates a new world if none is found. World size is specified by: 1(small), 2(medium), and 3(large). | `1` | |
| DIFFICULTY | Sets the difficulty of the world when using autocreate 0(classic), 1(expert), 2(master), 3(journey) | `0` | |
| WORLD_NAME | Sets the name of the world when using autocreate | `Terraria` | |
| SECURE | Adds addition cheat protection. | `1` | |
| LANGUAGE | Sets the server language from its language code.  | `en-US` | English = en-US, German = de-DE, Italian = it-IT, French = fr-FR, Spanish = es-ES, Russian = ru-RU, Chinese = zh-Hans, Portuguese = pt-BR, Polish = pl-PL |

##### Journey mode config

Journey mode power permissions for every individual power. 0: Locked for everyone, 1: Can only be changed by host, 2: Can be changed by everyone

| ENV Variable | Information | Default |
| ------------ | ----------- | ------- |
| J_TIME_SPEED | Set time speed | `2` |
| J_TIME_TOGGLE | Toggle time change | `2` |
| J_TIME_DAWN | Set time to dawn | `2` |
| J_TIME_NOON | Set time to noon | `2` |
| J_TIME_DUSK | Set time to dusk | `2` |
| J_TIME_MIDNIGHT | Set time to midnight | `2` |
| J_GODMODE| Enable god mode | `2` |
| J_WEATHER_WIND | Set wind strength | `2` |
| J_WEATHER_WIND_TOGGLE | Toggle wind change | `2` |
| J_WEATHER_RAIN | Set rain strength | `2` |
| J_WEATHER_RAIN_TOGGLE | Toggle rain change | `2` |
| J_PLACEMENT_RANGE | Set placement range | `2` |
| J_DIFFICULTY | Choose difficulty | `2` |
| J_BIOME | Toggle infection spread | `2` |
| J_SPAWN_RATE | Set enemy difficulty | `2` |
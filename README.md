# Terraria Server on Docker

## Usage

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
### ENV variables
------

#### VERSION
Version of the server to download

`default = 1401`

#### MAX_PLAYERS
Sets the max number of players allowed on a server.  Value must be between 1 and 255

`default = 8`

#### WORLD
Load a world and automatically start the server.

`default = Terraria.wld`

#### PORT
Set the port number

`default = 7777`

#### PASSWORD
Set the server password.

`default = `

#### MOTD
Set the message of the day

`default = `

#### WORLD_SIZE
Creates a new world if none is found. World size is specified by: 1(small), 2(medium), and 3(large).

`default = 1`

#### DIFFICULTY
Sets the difficulty of the world when using autocreate 0(normal), 1(expert)

`default = 0`

#### WORLD_NAME
Sets the name of the world when using autocreate

`default = Terraria`

#### SECURE
Adds addition cheat protection.

`default = 1`

#### LANGUAGE
Sets the server language from its language code. 

Available values:

| Language | Code |
| -------- | ---- |
| English | en-US |
| German | de-DE |
| Italian | it-IT | 
| French | fr-FR |
| Spanish | es-ES |
| Russian | ru-RU | 
| Chinese | zh-Hans | 
| Portuguese | pt-BR | 
| Polish | pl-PL |

`default = en-US`


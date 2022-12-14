#> bem:install/
#
# @internal

scoreboard objectives add bem-r0 dummy
scoreboard objectives add bem-r1 dummy
scoreboard objectives add bem-r2 dummy
scoreboard objectives add bem-16 dummy
scoreboard objectives add bem-4064 dummy
scoreboard objectives add bem-65024 dummy
scoreboard objectives add bem-addr dummy
scoreboard objectives add bem-last_addr dummy
scoreboard objectives add bem-head dummy

#declare score_holder #bem:
scoreboard players set #bem: bem-16 16
scoreboard players set #bem: bem-4064 4064
scoreboard players set #bem: bem-65024 65024
scoreboard players set #bem: bem-addr 0
scoreboard players set #bem: bem-last_addr -1
scoreboard players set #bem: bem-head 0

#declare storage bem:
data modify storage bem: pos set value [0.0, 0.0, 0.0]

execute in bem: run function bem:install/1

datapack disable "file/bem_installer.zip"
say Installed bem
stop

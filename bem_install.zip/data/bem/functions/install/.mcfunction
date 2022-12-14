#> bem:install/
#
# @internal

scoreboard objectives add bem dummy
scoreboard objectives add bem-16 dummy
scoreboard objectives add bem-4064 dummy
scoreboard objectives add bem-local dummy

#declare score_holder #bem:0
#declare score_holder #bem:1

scoreboard players set #bem:0 bem-16 16
scoreboard players set #bem:0 bem-4064 4064

#declare storage bem:
data modify storage bem: pos set value [0.0, 0.0, 0.0]

execute in bem: run function bem:install/1

datapack disable "file/bem_install.zip"
say Installed bem
stop

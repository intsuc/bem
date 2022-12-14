#> bem:uninstall/
#
# @internal

scoreboard objectives remove bem-r0
scoreboard objectives remove bem-r1
scoreboard objectives remove bem-16
scoreboard objectives remove bem-4064
scoreboard objectives remove bem-last_addr

scoreboard players reset #bem:

data remove storage bem: pos
data remove storage bem: node
data remove storage bem: addr
data remove storage bem: input
data remove storage bem: output

datapack disable "file/bem_uninstaller.zip"
say Uninstalled bem

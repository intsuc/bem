#> bem:install/
#
# @internal

scoreboard objectives add bem dummy
scoreboard objectives add bem-16 dummy
scoreboard objectives add bem-4064 dummy
scoreboard objectives add bem-local dummy

#declare score_holder #bem₀
#declare score_holder #bem₁
#declare score_holder #bem₂

scoreboard players set #bem₀ bem-16 16
scoreboard players set #bem₀ bem-4064 4064

#declare storage bem:
data modify storage bem: pos set value [0.0, 0.0, 0.0]

execute in bem: run function bem:install/1

datapack disable "file/bem_install.zip"

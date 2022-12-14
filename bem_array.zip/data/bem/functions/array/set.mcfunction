#> bem:array/set
#
# @api
#
# @input
#   storage bem:
#     input: {addr: int, index: int, value: any}
#
# @writes
#   score #bem: bem-r0
#   score #bem: bem-r1

data modify storage bem: addr set from storage bem: input.addr

  execute store result score #bem: bem-r0 run data get storage bem: input.addr
  scoreboard players add #bem: bem-r0 1
  execute store result score #bem: bem-r1 run data get storage bem: input.index
  execute store result storage bem: input.addr int 1.0 run scoreboard players operation #bem: bem-r0 += #bem: bem-r1
  function bem:internal/move/
  function bem:internal/store/

data modify storage bem: input.addr set from storage bem: addr

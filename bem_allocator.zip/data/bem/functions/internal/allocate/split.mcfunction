#> bem:internal/allocate/split
#
# @within bem:internal/allocate/check
#
# @input
#   storage bem:
#     input: {size: int, addr: int}
#   score #bem: bem-r0
#     storage bem: input.size
#   score #bem: bem-r1
#     storage bem: node.s

# update left node
  execute store result storage bem: node.s int 1.0 run scoreboard players get #bem: bem-r0

  execute store result score #bem: bem-head run data get storage bem: input.addr
  scoreboard players operation #bem: bem-head += #bem: bem-r0
  execute store result storage bem: node.n int 1.0 run scoreboard players add #bem: bem-head 1

  execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run item modify block ~ ~ ~ container.0 bem:set_node

# create right node
  execute store result storage bem: node.s int 1.0 run scoreboard players operation #bem: bem-r1 -= #bem: bem-r0
  data remove storage bem: node.n

  execute store result storage bem: input.addr int 1.0 run scoreboard players get #bem: bem-head
  function bem:internal/commit/

  execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run item modify block ~ ~ ~ container.0 bem:set_node

scoreboard players set #bem: bem-r1 -1

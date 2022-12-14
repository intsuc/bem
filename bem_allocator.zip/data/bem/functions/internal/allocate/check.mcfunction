#> bem:internal/allocate/check
#
# @within
#   bem:allocate
#   bem:internal/allocate/next
#
# @input
#   storage bem:
#     input: {size: int, addr: int}

function bem:internal/move/
execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run data modify storage bem: node set from block ~ ~ ~ Items[0].tag

execute store result score #bem: bem-r0 run data get storage bem: input.size
execute store result score #bem: bem-r1 run data get storage bem: node.s
execute if score #bem: bem-r0 <= #bem: bem-r1 run function bem:internal/allocate/split
execute if score #bem: bem-r1 matches 0.. run function bem:internal/allocate/next

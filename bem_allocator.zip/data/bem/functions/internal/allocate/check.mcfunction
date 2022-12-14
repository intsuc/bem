#> bem:internal/allocate/check
#
# @within
#   bem:internal/allocate/
#   bem:internal/allocate/next
#
# @input
#   storage bem:
#     input: {size: int, addr: int}
#
# @output
#   storage bem:
#     output: {addr: int}
#
# @writes
#   score #bem: bem-r0
#   score #bem: bem-r1
#   score #bem: bem-r2
#   score #bem: bem-addr
#   score #bem: bem-last_addr
#   score #bem: bem-head

function bem:internal/move/
execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run data modify storage bem: node set from block ~ ~ ~ Items[0].tag

execute store result score #bem: bem-r0 run data get storage bem: node.s
execute store result score #bem: bem-r1 run data get storage bem: input.size
execute if score #bem: bem-r1 <= #bem: bem-r0 run function bem:internal/allocate/split
execute if score #bem: bem-r1 matches 0.. run function bem:internal/allocate/next

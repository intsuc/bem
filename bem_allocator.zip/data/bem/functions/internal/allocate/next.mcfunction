#> bem:internal/allocate/next
#
# @within bem:internal/allocate/check
#
# @input
#   storage bem:
#     input: {size: int, addr: int}
#     node: {s: int, n: int}
#
# @writes
#   score #bem: bem-r0
#   score #bem: bem-r1
#   score #bem: bem-r2
#   score #bem: bem-addr
#   score #bem: bem-last_addr
#   score #bem: bem-head

data modify storage bem: input.addr set from storage bem: node.n
function bem:internal/allocate/check

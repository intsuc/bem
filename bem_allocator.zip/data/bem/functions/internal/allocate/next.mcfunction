#> bem:internal/allocate/next
#
# @within bem:internal/allocate/check
#
# @input
#   storage bem:
#     input: {size: int, addr: int}
#     node: {s: int, n: int}

data modify storage bem: input.addr set from storage bem: node.n
function bem:internal/allocate/check

#> bem:array/size
#
# @api
#
# @input
#   storage bem:
#     input: {addr: int}
#
# @output
#   storage bem:
#     output: {size: int}

function bem:internal/move/
data modify storage bem: output.size set from block ~ ~ ~ Items[0].tag.s

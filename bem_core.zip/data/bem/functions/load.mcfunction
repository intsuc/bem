#> bem:load
#
# @api
#
# @input
#   storage bem:
#     input: {addr: int}
#
# @output
#   storage bem:
#     output: any

function bem:internal/move/
execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run data modify storage bem: output set from block ~ ~ ~ Items[0].tag.""
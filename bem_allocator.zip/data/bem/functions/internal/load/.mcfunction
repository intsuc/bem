#> bem:internal/load/
#
# @internal
#
# @output
#   storage bem:
#     output: {value: any}

data remove storage bem: output
execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run data modify storage bem: output.value set from block ~ ~ ~ Items[0].tag.""

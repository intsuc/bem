#> bem:internal/store/
#
# @internal
#
# @input
#   storage bem:
#     input: {value: any}

execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run data modify block ~ ~ ~ Items[0].tag."" set from storage bem: input.value

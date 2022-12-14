#> bem:internal/commit/
#
# @internal
#
# @input
#   storage bem:
#     input: {addr: int}

function bem:internal/move/
execute at fc69d33c-52bb-3ffa-a62c-f5936ef6cc0a run setblock ~ ~ ~ chest[facing=east]{Items: [{id: "cod", Count: 1b}]}

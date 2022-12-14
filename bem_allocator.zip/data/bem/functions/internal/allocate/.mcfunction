#> bem:internal/allocate/
#
# @internal
#
# @input
#   storage bem:
#     input: {size: int}
#
# @output
#   storage bem:
#     output: {addr: int}

data modify storage bem: addr set from storage bem: input.addr

  execute store result storage bem: input.addr int 1.0 run scoreboard players get #bem: bem-head
  function bem:internal/allocate/check

data modify storage bem: input.addr set from storage bem: addr

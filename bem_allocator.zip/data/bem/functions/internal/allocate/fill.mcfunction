#> bem:internal/allocate/fill
#
# @within
#   bem:internal/allocate/split
#   bem:internal/allocate/fill
#
# @writes
#   score #bem: bem-r0
#   score #bem: bem-r1
#   score #bem: bem-addr
#   score #bem: bem-last_addr

function bem:internal/incr/
function bem:internal/commit/

scoreboard players remove #bem: bem-r1 1
execute if score #bem: bem-r1 matches 1.. run function bem:internal/allocate/fill

#> bem:internal/allocate/fill
#
# @within
#   bem:internal/allocate/split
#   bem:internal/allocate/fill

function bem:internal/incr/
function bem:internal/commit/

scoreboard players remove #bem: bem-r0 1
execute if score #bem: bem-r0 matches 1.. run function bem:internal/allocate/fill

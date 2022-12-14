#> bem:internal/deallocate/clear
#
# @within
#   bem:deallocate
#   bem:internal/deallocate/clear
#
# @writes
#   score #bem: bem-r0
#   score #bem: bem-r1
#   score #bem: bem-addr
#   score #bem: bem-last_addr

function bem:internal/incr/
function bem:internal/decommit/

scoreboard players remove #bem: bem-r1 1
execute if score #bem: bem-r1 matches 1.. run function bem:internal/deallocate/clear

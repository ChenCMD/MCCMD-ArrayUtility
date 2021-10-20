#> array_util:core/shuffle
# @within function
#   array_util:core/**
#   array_util:api/shuffle

scoreboard players operation $Random.Base ArrayUtilCore *= $31743 ArrayUtilCore
scoreboard players operation $Random.Base ArrayUtilCore += $Random.Carry ArrayUtilCore
scoreboard players operation $Random.Carry ArrayUtilCore = $Random.Base ArrayUtilCore
scoreboard players operation $Random.Carry ArrayUtilCore /= $65535 ArrayUtilCore
scoreboard players operation $Random.Base ArrayUtilCore %= $65535 ArrayUtilCore

scoreboard players operation $arrayX ArrayUtilCore = #X ArrayUtilCore
scoreboard players operation $arrayX ArrayUtilCore %= #ListSize ArrayUtilCore
execute if score $arrayX ArrayUtilCore matches 1.. run function array_util:core/move
data modify storage array_util: ArrayO append from storage array_util: Array[-1]
data remove storage array_util: Array[-1]
data modify storage array_util: Array append from storage array_util: Cache[]
function array_util:core/force_delete_cache
scoreboard players remove $ListSize ArrayUtilCore 1
execute if score $ListSize ArrayUtilCore matches 1.. run function array_util:core/shuffle
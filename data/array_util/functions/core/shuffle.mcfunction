#> array_util:core/shuffle
# @within function
#   array_util:core/**
#   array_util:api/shuffle

scoreboard players operation #X CB02_Core *= #A CB02_Core
scoreboard players operation #X CB02_Core %= #M CB02_Core
scoreboard players operation #arrayX CB02_Core = #X CB02_Core
scoreboard players operation #arrayX CB02_Core %= #ListSize CB02_Core
execute if score #arrayX CB02_Core matches 1.. run function array_util:core/move
data modify storage array_util: ArrayO append from storage array_util: Array[-1]
data remove storage array_util: Array[-1]
data modify storage array_util: Array append from storage array_util: Cache[]
function array_util:core/force_delete_cache
scoreboard players remove #ListSize CB02_Core 1
execute if score #ListSize CB02_Core matches 1.. run function array_util:core/shuffle
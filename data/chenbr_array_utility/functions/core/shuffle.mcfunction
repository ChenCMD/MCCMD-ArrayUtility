#> chenbr_array_utility:core/shuffle
# @within function
#   chenbr_array_utility:core/**
#   chenbr_array_utility:api/shuffle

scoreboard players operation #X CB02_Core *= #A CB02_Core
scoreboard players operation #X CB02_Core %= #M CB02_Core
scoreboard players operation #arrayX CB02_Core = #X CB02_Core
scoreboard players operation #arrayX CB02_Core %= #ListSize CB02_Core
execute if score #arrayX CB02_Core matches 1.. run function chenbr_array_utility:core/move
data modify storage chenbr:array_util ArrayO append from storage chenbr:array_util Array[-1]
data remove storage chenbr:array_util Array[-1]
data modify storage chenbr:array_util Array append from storage chenbr:array_util Cache[]
function chenbr_array_utility:core/force_delete_cache
scoreboard players remove #ListSize CB02_Core 1
execute if score #ListSize CB02_Core matches 1.. run function chenbr_array_utility:core/shuffle
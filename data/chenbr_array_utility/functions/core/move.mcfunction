#> chenbr_array_utility:core/move
# @within function
#   chenbr_array_utility:core/**
#   chenbr_array_utility:api/move

scoreboard players remove #arrayX CB02_Core 1
data modify storage chenbr:array_util Cache append from storage chenbr:array_util Array[-1]
data remove storage chenbr:array_util Array[-1]
execute if score #arrayX CB02_Core matches 1.. run function chenbr_array_utility:core/move
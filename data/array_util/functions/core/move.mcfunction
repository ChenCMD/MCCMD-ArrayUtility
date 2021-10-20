#> array_util:core/move
# @within function
#   array_util:core/**
#   array_util:api/move

scoreboard players remove #arrayX CB02_Core 1
data modify storage array_util: Cache append from storage array_util: Array[-1]
data remove storage array_util: Array[-1]
execute if score #arrayX CB02_Core matches 1.. run function array_util:core/move
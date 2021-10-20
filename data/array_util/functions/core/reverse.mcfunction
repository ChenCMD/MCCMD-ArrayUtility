#> array_util:core/reverse
# @within function
#   array_util:core/**
#   array_util:api/reverse

execute store result score #arrayX CB02_Core if data storage array_util: Array[]
function array_util:core/move
data modify storage array_util: Array set from storage array_util: Cache
function array_util:core/force_delete_cache
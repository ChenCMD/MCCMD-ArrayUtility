#> chenbr_array_utility:core/reverse
# @internal

execute store result score #arrayX CB02_Core if data storage chenbr:array_util Array[]
function chenbr_array_utility:core/move
data modify storage chenbr:array_util Array set from storage chenbr:array_util Cache
function chenbr_array_utility:core/force_delete_cache
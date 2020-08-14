#> chenbr_array_utility:core/revert
# @within function
#   chenbr_array_utility:core/**
#   chenbr_array_utility:api/revert

data modify storage chenbr:array_util Array append from storage chenbr:array_util Cache[-1]
data remove storage chenbr:array_util Cache[-1]
execute if data storage chenbr:array_util Cache[] run function chenbr_array_utility:core/revert
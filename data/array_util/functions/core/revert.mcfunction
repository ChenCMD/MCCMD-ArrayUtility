#> array_util:core/revert
# @within function
#   array_util:core/**
#   array_util:api/revert

data modify storage array_util: Array append from storage array_util: Cache[-1]
data remove storage array_util: Cache[-1]
execute if data storage array_util: Cache[] run function array_util:core/revert
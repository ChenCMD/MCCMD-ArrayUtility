#> array_util:api/shuffle
#
# 配列の要素をシャッフルします
#
# @public
# @input
#   storage array_util:
#       Array: list(any)
#           配列データ
# @output
#   storage array_util:
#       Array: list(any)
#           ランダムな順の配列


execute store result score #ListSize CB02_Core if data storage array_util: Array[]
data modify storage array_util: ArrayO set value []
function array_util:core/shuffle
data modify storage array_util: Array set from storage array_util: ArrayO
data remove storage array_util: ArrayO
#> chenbr_array_utility:api/shuffle
#
# 配列の要素をシャッフルします
#
# @public
# @input
#   storage chenbr:array_util
#       Array: list(any)
#           配列データ
# @output
#   storage chenbr:array_util
#       Array: list(any)
#           ランダムな順の配列


execute store result score #ListSize CB02_Core if data storage chenbr:array_util Array[]
data modify storage chenbr:array_util ArrayO set value []
function chenbr_array_utility:core/shuffle
data modify storage chenbr:array_util Array set from storage chenbr:array_util ArrayO
data remove storage chenbr:array_util ArrayO
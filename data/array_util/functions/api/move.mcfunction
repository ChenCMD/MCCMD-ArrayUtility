#> array_util:api/move
#
# 配列をキャッシュへ移動します。
#
# @public
# @input
#   storage array_util:
#       Array: list(any)
#           操作する配列データ
#   score $Move ArrayUtilInput
#       目的の要素のindex
# @output
#   storage array_util:
#       Array: list(any)
#           Array[-1]に目的の要素が存在
#       Cache: list(any)
#           移動されたデータ

execute store result score $arrayX ArrayUtilCore if data storage array_util: Array[]
scoreboard players remove $arrayX ArrayUtilCore 1
scoreboard players operation $arrayX ArrayUtilCore -= $Move ArrayUtilInput
execute if score $arrayX ArrayUtilCore matches 1.. run function array_util:core/move
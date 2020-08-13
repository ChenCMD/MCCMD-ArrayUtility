#> chenbr_array_utility:api/move
#
# 配列をキャッシュへ移動します。
#
# @public
# @input
#   storage chenbr:array_util
#       Array: list(any)
#           操作する配列データ
#   score $Move CB02_Input
#       目的の要素のindex
# @output
#   storage chenbr:array_util
#       Array: list(any)
#           Array[-1]に目的の要素が存在
#       Cache: list(any)
#           移動されたデータ

execute store result score #arrayX CB02_Core if data storage chenbr:array_util Array[]
scoreboard players remove #arrayX CB02_Core 1
scoreboard players operation #arrayX CB02_Core -= $Move CB02_Input
execute if score #arrayX CB02_Core matches 1.. run function chenbr_array_utility:core/move
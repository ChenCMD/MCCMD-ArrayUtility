#> chenbr_array_utility:api/revert
#
# 配列をキャッシュを元に復元します。
#
# @public
# @input
#   storage chenbr:array_util
#       Array: list(any)
#           move後の配列
#       Array: list(any)
#           move時に生成される配列
# @output
#   storage chenbr:array_util
#       Array: list(any)
#           move前の配列構造

execute if data storage chenbr:array_util Cache[] run function chenbr_array_utility:core/revert
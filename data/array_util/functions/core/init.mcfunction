#> array_util:core/init
# @within tag/function
#   minecraft:load

#> access modifier: internal
# @internal
    scoreboard objectives add ArrayUtilCore dummy
scoreboard players set $31743 ArrayUtilCore 31743
scoreboard players set $65535 ArrayUtilCore 65535
# 乱数値の設定
    #> Private
    # @private
        #declare tag Random
    summon marker ~ ~ ~ {Tags:["Random"]}
    execute store result score $Random.Base ArrayUtilCore run data get entity @e[tag=Random,limit=1] UUID[1]
    execute store result score $Random.Carry ArrayUtilCore run data get entity @e[tag=Random,limit=1] UUID[3]
    kill @e[tag=Random,limit=1]

#> access modifier: public
# @public
    #declare storage array_util:
    scoreboard objectives add ArrayUtilInput dummy
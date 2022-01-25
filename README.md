# MCCMD-ArrayUtility
配列の動的添字参照やシャッフル、反転ができるライブラリ


## DL方法
[こちら](https://github.com/ChenCMD/MCCMD-ArrayUtility/releases/latest/download/MCCMD-ArrayUtility.zip)をDLしてください


## 配列の動的添字参照
### 引数
| 対象                     | 要求データ | 必須  | 型   | 説明         |
| :----------------------- | :--------- | :---: | :--- | :----------- |
| storage array_util:      | Array      |   o   | List | 操作する配列 |
| objective ArrayUtilInput | $Move      |   o   | int  | 添え字       |

### 使い方
```mcfunction
function array_util:api/move

# 配列構造を元に戻したい場合
function array_util:api/revert
```

### 例
```mcfunction
# 配列を設定
    data modify storage array_util: Array set value [0,1,2,3,4,5,6,7,8,9]
# 目標の添字を設定
    scoreboard players set $Move ArrayUtilInput 5
# 移動
    function array_util:api/move
# 出力: 5
    tellraw @a {"storage":"array_util:","nbt":"Array[-1]"}
# 置換 5 -> 15
    data modify storage array_util: Array[-1] set value 15
# 戻す
    function array_util:api/revert
# 出力: 0,1,2,3,4,15,6,7,8,9
    tellraw @a {"storage":"array_util:","nbt":"Array[]"}
```


## シャッフル
### 引数
| 対象                | 要求データ | 必須  | 型   | 説明               |
| :------------------ | :--------- | :---: | :--- | :----------------- |
| storage array_util: | Array      |   o   | List | シャッフルする配列 |

### 使い方
```mcfunction
function array_util:api/shuffle
```

### 例
```mcfunction
# 配列を設定
    data modify storage array_util: Array set value [0,1,2,3,4,5,6,7,8,9]
# シャッフル
    function array_util:api/shuffle
# 出力: ?,?,?,?,?,?,?,?,?,?
    tellraw @a {"storage":"array_util:","nbt":"Array[]"}
```


## 反転
### 引数
| 対象                | 要求データ | 必須  | 型   | 説明         |
| :------------------ | :--------- | :---: | :--- | :----------- |
| storage array_util: | Array      |   o   | List | 反転する配列 |

### 使い方
```mcfunction
function array_util:api/reverse
```

### 例
```mcfunction
# 配列を設定
    data modify storage array_util: Array set value [0,1,2,3,4,5,6,7,8,9]
# 反転
    function array_util:api/reverse
# 出力: 9,8,7,6,5,4,3,2,1,0
    tellraw @a {"storage":"array_util:","nbt":"Array[]"}
```


## 注意点
 * 前回のキャッシュが残った状態で配列操作を行うのは非推奨です。  
   意図した場合を除き、必ず`array_util:api/force_delete_cache`または`array_util:api/revert`を実行してから配列操作を行ってください。
 * 不具合が起きる可能性が高いため、`array_util:core/*`のfunctionを直接実行しないでください。


## ざっくりライセンス
 * 再配布, 改変, 商用/私的利用ok
 * このライブラリ使ったことによって何か起きてもちぇんは責任も保証もしないよ


## 連絡先
[Twitter](https://twitter.com/Chen__CMD)

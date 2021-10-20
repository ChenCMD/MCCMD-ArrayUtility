# ArrayStorageSystem
**配列のindex -1に目的のデータを持ってくることや操作ができるシステム**

## DL方法
[こちら](https://github.com/ChenCMD/MCCMD-ArrayUtility/releases/tag/1.0)からAssets -> ArrayUtility.zip をDLしてください
## 使い方
1. `data modify storage array_util: Array set ~ `で**chenbr:array_util Array**に配列を設定
2. **CB02_Input $Move** に配列の目標位置のindexを設定
3. `function array_util:api/move`を実行
4. **chenbr:array_util Array[-1]**に目的の値があるため自由に操作/取得/削除する
5. [任意] `function array_util:api/revert`を実行し、配列構造を元に戻す
6. [任意] `data mofify storage ~ set chenbr:array_util Array[]` このコマンドで元の配列へ変更を適用する

Example:
```mcfunction
# array set
    data modify storage array_util: Array set value [0,1,2,3,4,5,6,7,8,9]
# index set
    scoreboard players set $Move CB02_Input 5
# run
    function array_util:api/move
# output: 5
    tellraw @a {"storage":"chenbr:array_util","nbt":"Array[-1]"}
# replace 5 -> 15
    data modify storage array_util: Array[-1] set value 15
# revert
    function array_util:api/revert
# output: 0,1,2,3,4,15,6,7,8,9
    tellraw @a {"storage":"chenbr:array_util","nbt":"Array[]"}
```

## 注意点
 * 前回のキャッシュが残った状態で配列操作を行うは非推奨です。  
   意図した場合を除き、必ず`array_util:api/force_delete_cache`または`array_util:api/revert`を実行してから配列操作を行ってください。
 * 不具合が起きる可能性が高いため、`array_util:core/*`のfunctionを直接実行しないでください。

## ざっくりライセンス
 * 再配布, 改変, 商用/私的利用ok
 * このライブラリ使ったことによって何か起きてもちぇんは責任も保証もしないよ

## 連絡先
[Twitter](https://twitter.com/Chen__CMD)

# Git操作（reset） 

# (1) addの取り消し
 $ git reset HEAD
 または
 $ git reset [file]
 ※ ファイル編集の取り消しは $ git restore [file] または $ git checkout [file]

# (2) コミットの取り消し
 $ git reset --soft HEAD^  # コミット(commit)のみ取り消し
 $ git reset --mixed HEAD^ # コミット(commit)とインデックス(add)の取り消し
 $ git reset --hard HEAD^  # コミット(commit)とインデックス(add)と編集(edit)の取り消し

# (3) コミットのresetを取り消す。取り消しの取り消し。
$ git reset --hard HEAD^　# 間違えてresetしてしまった！
$ git reflog
04f11b7 HEAD@{0}: reset: moving to 04f11b7
0208e28 HEAD@{1}: merge develop: Merge made by the 'recursive' strategy.
6908c20 HEAD@{2}: checkout: moving from develop to master
 reflogで出力した上記の操作履歴から戻りたい場所を特定します。
 今回は一番上がresetでコミットを消してしまった操作なので、
 その下の操作位置が戻りたい場所になります。
 したがって、再度 git resetで戻りたい場所を指定します。
$ git reset --hard HEAD@{1}
この操作はpushを行う前に使用する。push後に取り消す場合はrevertを使う

# (4) コミットのresetをrevertで打ち消す。
 $git revert  [打ち消したいコミットID]
※[打ち消したいコミットID]とはハッシュ値のことです。
※コミットIDは　git log --oneline　で調べる。
※ revertの打ち消しはリモートブランチに影響を与えない。




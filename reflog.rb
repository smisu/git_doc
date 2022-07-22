# git reflogを使うと(GCされていなければ)過去のあらゆるコミット履歴を見ることができる

#(1) 操作履歴（コミット履歴）を見る
 $ git reflog
 $ git reflog -all   # 全ての操作履歴を見る
 
 $ git log -g --oneline # git reflogと同じ。操作履歴を見る

#(2) 間違ってマージしていないブランチを消してしまったとき
$ git reset --hard HEAD^^ # HEAD^と指定するつもりがHEAD^^としてしまった!
                          # 上記の操作を取り消したい
$ git reflog
f5cb888 HEAD@{0}: head^^: updating HEAD
b0b8073 HEAD@{1}: merge @{-1}: Merge made by the 'recursive' strategy.
fe3972d HEAD@{2}: checkout: moving from fix/some-bug to master
 # git resetしてしまった前の操作まで戻って 再度git resetを実行する
$ git reset --hard HEAD@{1} # reset --hard HEAD^^する前に戻れる


#(3) 削除したブランチを元に戻す
$ git reflog # 操作履歴を確認
ed1cab2 (HEAD -> master, origin/master, origin/HEAD) HEAD@{0}: checkout: moving from working_branch to master
72850f3 HEAD@{1}: commit: Add base activity

$ git branch working_branch HEAD@{1} # 削除する前の状態に戻す



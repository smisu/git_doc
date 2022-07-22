Git操作　（ログ）

# (1)  カレントブランチの全てのログを出力する
 $ git log

# (2) ログを１行で出力する
 $ git log --oneline
 
# (3) ログをグラフィカルに表示する
 $ git log --graph

# (4) コミットでどんな修正をしたか
 $ git log -p [file]

# (5) 指定ファイルのログの閲覧
 $ git log [file]

# (6) 全ブランチの全てのログを出力する
 $ git log --all

# (7) 全てのログ(--all)を１行で出力(--oneline)し、グラフィカルに表示(--graph)する
 $ git log --oneline --all --graph

# (8) 操作履歴を見る
 $ git log -g --oneline
 $ git reflog
 $ git reflog -all   # 全ての操作履歴を見る

# (9) ファイル名も出力する
 $ git log --stat --oneline

# (10) 先頭１行のみを出力する
 $ git log --oneline -1


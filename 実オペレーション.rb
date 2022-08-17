# 実作業Gitオペレーション

# [1] masterにpullする（リモートmasterとローカルmasterを同期させる）

git checkout master && git pull origin master --no-edit && git fetch origin --prune && git reset --hard origin/master

 # git checkout master # masterブランチ切り替え
 # git pull origin master --no-edit  # リモート origin masterをローカルmasterブランチにマージする。--no-editはメッセージ入力はなし
 # git fetch origin --prune # リモート origin を ローカルorigin/ にフェッチする。--prune はリモートで消されたブランチを削除する
 # git reset --hard origin/master # origin/masterに存在するGitの追跡情報を全て削除する


# [2] リモートのorigin HEADにpushする

git add . && git commit -a -m save && git push origin HEAD


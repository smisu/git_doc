#マスターを同期する
#(1) masterを同期する
#(pullする)
#リモートmasterとローカルmasterを同期する）
#

git checkout master && git pull origin master --no-edit && git fetch origin --prune && git reset --hard origin/master

# コマンド説明
# git checkout master # masterブランチ切り替え
# git pull origin master --no-edit  # リモート origin masterをローカルmasterブランチにマージする。--no-editはメッセージ入力はなし
# git fetch origin --prune # リモート origin を ローカルorigin/ にフェッチする。--prune はリモートで消されたブランチを削除する
# git reset --hard origin/master # origin/masterに存在するGitの追跡情報を全て削除する




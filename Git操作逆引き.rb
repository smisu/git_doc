#Git操作逆引きメモ

# (1) git ダウンロード・インストールと設定
download
install (参照：https://www.curict.com/item/60/60bfe0e.html ）
gitbash起動(editor起動)
インストール場所の確認： 
$ which git /mingw64/bin/git
Gitバージョン確認: 
$ git --version
git version 2.36.1.windows.1
ユーザ名設定　
$ git config --global user.name "Sadahiko Misu"
メールアドレス設定 
$ git config --global user.email "s_misu@dronne-it.jp"
設定内容の確認 
$ git config --list 
設定ファイルを直接見る: 
#$ cat ~/.gitconfig

# (2) リポジトリの新規作成(Git開始、Gitの初期化、Gitの環境生成）(git init)
#$ cd /tmp # 作業親ディレクトリへ移動
$ mkdir git-practice # 作業ディレクトリ作成
$ cd git-practice # 作業ディレクトリへ移動
$ git init  # Gitの初期化（git initを行うことでGit環境が自動生成される）
$ ls /tmp/git-practice/.git/ #Git環境のファイル確認
HEAD  config  description  hooks/  info/  objects/  refs/
※ Gitの操作履歴はすべてこのディレクトリに入っている
※ Gitは作業ディレクトリ単位で管理される

# (3) Gitの追跡対象にする(Git管理）(git add) 
$ touch file      # ファイルの編集、作成
$ git status
Untracked files: ..  まだGitの追跡ファイルになっていない
file
$ git add file  　　# addコマンドでGitの追跡対象に加える
編集したファイルを全てaddするには $git add . を実行そる。
$ git status　　　# 追跡対象になっていることを確認する
new file: file

# (4) Gitの追跡対象ファイルをローカルリポジトリに登録する(git commit)
$ git commit -a -m "save"
※-aオプションはリポジトリに存在するファイル（追跡対象のファイル）のみaddを行う。
※ 新規ファイルはgit add で追跡対象になっていればcommitされる。
※　"save"はコミットメッセージ

# (5) ログの確認 (git log)
$ git log # Gitの全てのログが出力される(コミットされているもの)
$ git log --oneline # ログを１行で表示
$ git log --graph # ログをグラフィカルに表示
$ git log --all # 全てのログを表示
$ git log --grep="検索キー" #コミットメッセージから検索する
$ git log --stat # コミットした時のファイル名も表示する
$ git log -- name-status # ファイル名も表示する
$ git log file-name # 特定ファイルのログの表示 ※file-nameはGit追跡対象ファイル
$ git log -p file-name # コミットでどんな修正をしたかを出力する

# (6) ファイルを削除する (git rm)
$ git rm [file]    # rmされた後 git addされる（ファイルを削除した後Git追跡対象から外す）

# (7) ファイルを編集前に戻す(git checkout)
$ git checkout [file] # addから外す。追跡対象から外す。元のファイルに戻る。
または
$ git reset [file]

# (8) 追跡対象から外す (git rm --cached)
$ git rm [file] --cached  # 追跡対象からのみ外す。ファイルは残る。編集部分もそのまま。

# (9) ファイル名を変更する (git mv)
$ git mv [file1] [file2] # 追跡対象のファイル名を変更する

# (10) 空のディレクトリを追加する(.gitkeep)
新規作成した空ディレクトリをGit管理下にしたいとき、
作成したディレクトリ内にダミーファイルを作成し、git add . を実行する。
$ mkdir [dir]
$ touch [dir]/[file]   # 空ファイルを作成する。ファイル名はなんでもよい。
$ git status
$ git add .
※ 空ファイル名は.gitkeepが一般的

# (11) Git管理対象から外す(.gitignore)
Git管理対象から指定ファイルを外したい場合は、
.gitignore ファイルに外したいファイル名を記載する。
このファイルに記載するとGitの管理対象から外れ、
ファイルが編集されてもgitコマンドで表示されない。
※このファイルはルートディレクトリ直下に置くこと
※ドットファイルなのでファイル名に注意

# (12) 削除してしまったファイルを復元する (git checkout)
#      編集してしまったファイルを編集前に戻す
$ git checkout [file]
※ file を　checkout　することで、ステージングエリアのファイルをワーキングエリアにコピーする。
※ ステージングエリアにあるファイルは前回コミットされたファイルである。
※ 編集ファイルは元ファイルに上書きされるため、編集後のファイルには戻れない。

# (13) 編集した全ファイルを元に戻したい。編集をキャンセルしたい。(git checkout)
$ git checkout .
※ドットを指定することで編集されたすべてのファイルの編集がキャンセルされる。

# (14) addしてしまったファイルを元に戻したい。addを取り消したい。(git reset)
#間違って、addしてしまったファイルを取り消して、add前の状態に戻す。
$ git reset HEAD　# 全てのファイルを対象
$ git reset [file]  # 特定のファイルを取り消す
$ git reset [branch]  # ブランチ名で取り消す

# (15) コミット内容を確認する。(git show)
＄ git show [branch]
・コミット単位
・ログや差分の表示
・ファイル名の表示

# (15-2)どんな変更を行ったか（差分）。(git log -p)
$ git log -p [file]
・コミットでどんな変更をしたか調べる

# (16) ブランチを切り替える (git checkout)
$ git checkout [branch]

# (17) masterを同期する(pull)する（リモートmasterとローカルmasterを同期する）
git checkout master && git pull origin master --no-edit && git fetch origin --prune && git reset --hard origin/master
※--no-editは自動作成されたマージログメッセージを受け入れる。メッセージの編集は行わない。
※--pruneはフェッチする前にリモートに存在しなくなったリモート追跡参照を削除する。
※git reset --hard origin/masterは hardモードでorigin/masterブランチのコミットをresetする。
上記のコマンドを簡単に説明すると
まず、checkout でマスターブランチに切り替える、そして　pull でリモートのorigin masterをローカルのorigin/masterにフェッチし、ローカルのmasterブランチにマージする。その時にマージログメッセージの編集は行わない。次に再度リモートorigin masterをローカルのorign/masterにフェッチする。その時リモートに存在しなくなったリモート追跡参照を削除する。最後にローカルのorigin/masterのコミットをhardモードでresetする。

# (18) 作業ブランチに切り替える（ファイルの編集中ブランチ）(git checkout)
$ git checkout [作業ブランチ]

# (19) masterブランチに作業ブランチ(feature)をマージする（同期をとる）(git merge)
$ git checkout master
$ git merge feature
※ここで衝突が起こったらソースを修正する

# (20) マージリクエストを実行する(push)
git add . && git commit -a -m save && git push origin HEAD

# (21) ブランチを作成する
$ git branch [branch] or git checkout -b [branch]

# (22) ブランチの切り替え
$ git checkout [branch] or git switch [branch]

# (23) ブランチ名の変更
$ git branch -M [new branch] or git branch -m [new branch]

# (24) ブランチの確認
$ git status or $ git branch
※リモートブランチを含め全てのブランチを確認するには $git branch -a

# (25) masterブランチとファイルの中身を比較する
$ git diff master

# (26) リモートリポジトリ(origin)にpushする。反映する。
$ git push origin HEAD or $ git push origin [branch]

# (27) 直前のコミット状態に戻す
git checkout -- [file]
※ -- が直前のコミットを意味する （編集済み） 



#Git メモ（スタート）


#-------------インストールと確認--------------
#download
#install (参照：https://www.curict.com/item/60/60bfe0e.html ）
#gitbash起動
#インストール場所の確認： $ which git
#/mingw64/bin/git
#Gitバージョン確認: $ git --version
#git version 2.36.1.windows.1
#ユーザ名設定　$ git config --global user.name "Sadahiko Misu"
#メールアドレス設定 $ git config --global user.email "s_misu@dronne-it.jp"
#設定内容の確認 $ git config --list （設定ファイルを直接見る: $ cat ~/.gitconfig）

#---------------リポジトリの新規作成(Git開始、Gitの初期化、Gitの環境生成）------------
#$ cd /tmp  作業親ディレクトリへ移動
#$ mkdir git-practice 作業ディレクトリ作成
#$ cd git-practice 作業ディレクトリへ移動
#$ git init  Gitの初期化（git initを行うことでGit環境が自動生成される）
#Git環境のファイル確認 $ ls /tmp/git-practice/.git/
#　HEAD  config  description  hooks/  info/  objects/  refs/
#　※Gitの操作履歴はすべてこのディレクトリに入っている
#　※Gitは作業ディレクトリ単位で管理される

#------------Gitの追跡対象にする(Git管理）(git add) -----------------------
#$ touch file      # ファイルの編集、作成
#$ git status
#Untracked files: ..  まだGitの追跡ファイルになっていない
#file
#$ git add file  　　# addコマンドでGitの追跡対象に加える
#　編集したファイルを全てaddするには $git add . を実行そる。
#$ git status　　　# 追跡対象になっていることを確認する
#new file: file

#-----------Gitの追跡対象ファイルをローカルリポジトリに登録する(git commit) ---------------
#$ git commit -a -m "save"
#※-aオプションはリポジトリに存在するファイル（追跡対象のファイル）のみaddを行う。
#※ 新規ファイルはgit add で追跡対象になっていればcommitされる。
#※　"save"はコミットメッセージ

#-------------ログの確認 -----------------
#$ git log # Gitの全てのログが出力される(コミットされているもの)
#$ git log --oneline # ログを１行で表示
#$ git log --graph # ログをグラフィカルに表示
#$ git log --grep="検索キー" #コミットメッセージから検索する
#$ git log --stat # コミットした時のファイル名も表示する
#$ git log -- name-status # ファイル名も表示する
#$ git log file-name # 特定ファイルのログの表示 ※file-nameはGit追跡対象ファイル
#$ git log -p file-name # コミットでどんな修正をしたかを出力する

#---------------- ファイルを削除する---------
#ファイルを削除する:  $ git rm [file]    # rmされた後 git addされる（ファイルを削除した後Git追跡対象から外す）
#ファイルを編集前に戻す: $ git checkout [file] # addから外す。追跡対象から外す。元のファイルに戻る。
#追跡対象から外す: $ git rm [file] --cached  # 追跡対象からのみ外す。ファイルは残る。編集部分もそのまま。

#------------------- ファイル名を変更する ------
#$ git mv [file1] [file2] # 追跡対象のファイル名を変更する

#--------------------- 空のディレクトリを追加する --------
#新規作成した空ディレクトリをGit管理下にしたいとき、
#作成したディレクトリ内にダミーファイルを作成し、git add . を実行する。
#$ mkdir [dir]
#$ touch [dir]/[file]   # 空ファイルを作成する。ファイル名はなんでもよい。
#$ git status
#$ git add .

#------------- Git管理対象から外す -------------
#Git管理対象から指定ファイルを外したい場合は、
#.gitignore ファイルに外したいファイル名を記載する。
#このファイルに記載するとGitの管理対象から外れ、
#ファイルが編集されてもgitコマンドで表示されない。
#※このファイルはルートディレクトリ直下に置くこと
#※ドットファイルなのでファイル名に注意 （編集済み）


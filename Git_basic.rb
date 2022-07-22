# Git操作（基本）2022.6.16

#(1) リモートリポジトリの作成
https://github.com #GitHubにアクセスする
user: smisu
pass: smisu1234
public site: https://github.com/
画面左側メニュー上の[New]ボタンをクリック
Repository name * にリポジトリ名を入力
git-practice-01

#(2)  ローカルにリモートリポジトリをコピーする
 $ cd ~/work
 $ git clone https://github.com/smisu/git-practice-01.git
 Cloning into 'git-practice-01'...

#(3) ブランチの確認
 $ git branch 
 *main

#(4)  Git追跡ファイル作成
 $ cd ~/work/git-practice-01
 $ touch practice01.txt
 $ git add practice01.txt
 $ git commit -m "practice01"

#(5) Git追跡ファイルを編集し、リモートリポジトリに登録
 $ echo "practice01" >> practice01.txt
 $ git commit -a -m "practice01"
 $ git push origin HEAD
 ※ GitHubでリモートリポジトリにファイルがコピーされているか確認する(github.com/smisu/git-practice-01)

#(6)  Gitログの確認
 $ git log --oneline
 $ git log --oneline --all --graph # 全ブランチのログをグラフ表示

#(7)  編集ファイルの取り消し（編集前に戻す）(restore)
 $ cat practice01.txt
 practice01
 $ echo "practice01-2" > practice01.txt
 $ cat practice01.txt
 practice01-2
 $ git restore practice01.txt
 $ cat practice01.txt
 practice01

 または、
 $ git checkout practice01.txt
 ※追跡されていないファイルはrestoreでは取り消せない。

#(8) addされたファイル（インデックスされたファイル）を取り消す(reset)
 $  echo "practice01-3" > practice01.txt
 $ git status
 (赤) modified: practice01.txt
 $ git add practice01.txt
 $ git status  # ファイルの追跡状況を確認
 (緑）modified: practice01.txt
 $ git reset HEAD または git reset -- practice01.txt
 (赤) modified: practice01.txt

#(9) commit（コミットされたファイルのみ）を取り消す(reset --soft)
  $ git status
  (緑）modified: practice01.txt # インデックスされたファイル
  $ git commit -m "practice01-2"
  $ git log --oneline -1
  33c3024 (HEAD -> main ) practice01-2
  $ git reset --soft HEAD^
  $ git status
  (緑）modified: practice01.txt

#(10) コミットまで行ったが、編集前まで取り消したい（戻したい）(reset --hard)
  $ cat practice01.txt
  practice01-3
  $ echo "practice01-4" > practice01.txt
  $ git commit -am "practice01-4"
  $ git log --oneline -1
  0d0a6cca (HEAD -> main) practice01-4
  $ git reset --hard HEAD^
  $ git status
  $ git log --oneline -1
   608239a (HEAD -> main) practice01-3
  $ cat practice01.txt
  practice01-3



Git操作（リモート編）

 # (1) リモートリポジトリを確認する
 $ git remote -v
 origin https://github.com/smisu/git-practice-01.git (fetch)
 origin https://github.com/smisu/git-practice-01.git (push)

 # (2) リモートブランチを確認する
 $ git branch -r
 origin/main

 # (3) リモート名を登録する(GitにGitHubのリモート名（リモートリポジトリ）を登録する)
 $ git remote add origin https://github.com/smisu/git-practice-01.git

 # (4) リモートリポジトリのコピー
 $ git clone https://github.com/smisu/git-practice-01.git

 # (5) リモートブランチをマージする (fetchして、mergeする)
 $ git pull origin main
 上記操作は以下と同じである
 $ git fetch origin main  # リモートのorigin masterをローカルのorigin/masterにfetchする（同期をとる）
 $ git merge origin/main  # ローカルのorigin/masterをカレントブランチにマージする

 # (6) リモートのリポジトリ名を変更する（リモートURLの変更）
 $ git remote set-url [remote name] [new repository url]
 例：
 $ git remote -v
 origin https://github.com/smisu/git-practice-01.git (fetch)
 origin https://github.com/smisu/git-practice-01.git (push)
 $ git remote set-url origin https://github.com/smisu/git-practice-02.git

 #(7) リモートリポジトリを削除する
 $ git remote rm [remote name]

 例：
 $ git remote -v
 origin https://github.com/smisu/git-practice-03.git (fetch)
 origin https://github.com/smisu/git-practice-03.git (push)
 $ git remote rm origin
 $ git remote -v
 （削除されたため何も表示されない）
 ※ git remote add で登録されているローカルのリモートリポジトリ名を取り消す。
 ※ gitHubのリモートリポジトリは削除されない。

 #(7-2) GitHubからリポジトリを削除する
 GitHub Repository のSettingsタブをクリック
 Dangen ZoneにあるDelete this repositoryをクリック
 smisu/[repository_name]を入力（削除するリポジトリ名を入力する）

 #(8) リモートリポジトリの情報を取得する
 $ git remote show origin

 #(9) リモートリポジトリのリネーム(エイリアス名の変更）
 $ git remote rename [old name] [new name]
 例: $ git remote rename origin origin-old


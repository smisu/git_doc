#Git操作（マージ編, merge）

# (1)  developブランチをmasterブランチにマージする
 $ git branch
 *master
 $ git switch -c "develop" # developブランチを生成
 $ git branch
 master
 *develop
 
 $ touch practice01_develop.txt # ファイルを生成
 $ git add practice01_develop.txt
 $ git commit -m "develop practice01"
 $ echo "develop practice01" > practice01_develop.txt
 $ git commit -am "develop practice01-2"
 $ git log --oneline
 
 $ git switch "master" # masterブランチに切り替え
 $ git branch
 develop
 *master
 
 $ touch practice01_master.txt # masterブランチにファイルを生成
 $ git add practice01_master.txt
 $ git commit -m "master practice01"
 $ echo "master practice01" > practice01_master.txt
 $ git commit -am "master practice01-2"
 $ git log --oneline
 
 $ git merge --no-ff develop # developブランチをマージする。ただしfast-forward(ff)でのマージは行わない（コミットする）。
 $ git log --oneline -1
 992b649 (HEAD -> master) Merge branch 'develop'
 $ ls
 practice01_develop.txt    practice01_master.txt


# (2)  fetchしたorigin/masterをmasterにマージする
 $ git fetch origin master
 $ git checkout master
 $ git merge origin/master  # origin/masterをmasterにマージする


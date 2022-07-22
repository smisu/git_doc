#Git操作（マージ編, merge）

# (1)  developブランチをmainブランチにマージする

 $ git branch #ブランチ確認
 *main
 $ git switch -c "develop" # developブランチを生成
 $ git branch
 main
 *develop
 main
 
 $ touch practice01_develop.txt # ファイルを生成
 $ git add practice01_develop.txt
 $ git commit -m "develop practice01"
 $ echo "develop practice01" > practice01_develop.txt
 $ git commit -am "develop practice01-2"
 $ git log --oneline
 
 $ git switch "main" # mainブランチに切り替え
 $ git branch
 develop
 *main
 
 $ touch practice01_main.txt # masterブランチにファイルを生成
 $ git add practice01_main.txt
 $ git commit -m "main practice01"
 $ echo "main practice01" > practice01_main.txt
 $ git commit -am "main practice01-2"
 $ git log --oneline
 $ ls
 practice01_main.txt
 
 $ git merge develop # developブランチをマージ
 $ git log --oneline -1
 992b649 (HEAD -> main) Merge branch 'develop'
 $ ls
 practice01_develop.txt    practice01_main.txt




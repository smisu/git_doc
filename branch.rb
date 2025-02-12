Git操作（ブランチ編）branch

# (1) ブランチの切り替え
 $ git switch [branch]　
 または
 $ git checkout [branch]

# (2) ブランチの作成
 $ git checkout -b [branch] 
 または
 $ git switch -c [branch] 
 または
 $ git branch [branch]
 ※ git branchコマンドは作成するブランチに移動しない。

# (3) ブランチのマージ
# Fast Forward方式でマージする（デフォルト）
 $ git merge [branch]
 ※ Fast Forward方式とはGitがポインターを進めること
 ※ 親ブランチと子ブランチのHEADは同じ場所を指す

マージした後、コミットする(--no-ff)
 $ git merge --no-ff [branch]
 ※ Fast Forward方式でマージしない。
 ※ [branch]をマージ後、親ブランチはコミットする
 ※　親ブランチと子ブランチのHEADはそれぞれ別の場所を指す

# (4) ブランチ名を変更する（リネームする）
今いるブランチの名前を変える
 $ git branch -m [new branch name]

別ブランチの名前を変える
 $ git branch -m [old branch nane]  [new branch name]

# (5-1) カレントブランチの確認
 $ git branch | grep ^'*' または ^\*
 または
 $ git status

# (5-2) ブランチ一覧表示
 $ git branch
 *main
 feature

リモート追跡ブランチを含むブランチ一覧表示
 $ git branch -a
 *main
 remotes/origin/main

# (6) ブランチの削除
 マージ済みのブランチを削除する
 $ git branch -d  [branch]

 マージされていないブランチを削除する(強制削除)
 $ git branch -D [branch]

# (7) リモートブランチ一覧
 $ git branch -r
 ※ローカルブランチとリモートブランチの一覧は $ git branch -a

# (8) マージされているブランチの確認
 $ git branch --merged



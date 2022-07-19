#Git操作 (比較)(diff)

#(1) pullする前にリモートとローカルの変更点を確認する
 $ git diff HEAD..origin/[branch]

#(2) pushする前にリモートとローカルの変更点を確認する
 $ git diff origin/[branch]..HEAD

#(3) addする前に変更した箇所を確認する
 $ git diff [file]
 ※ワーキングエリアとステージングエリアのファイルを比較する
 ※ステージングエリアにファイルが存在しない場合はローカルリポジトリと比較する
 ※コードに変更が無ければ何も表示されない

#(4) add した後に変更した箇所を確認する
 $ git diff --cached
 ※ステージングエリアとローカルリポジトリのファイルを比較する
 ※ステージングエリアにファイルが存在しない場合は何もしない

#(5) commitした変更箇所を確認する(最新のコミットと最新のコミットのひとつ前の差分）
 $ git diff HEAD^
 ※最新のコミットとひとつ前のコミットの比較

#(6) コミット間の比較
 $ git diff [hash値a]  [hash値b]

#(7) ブランチ同士を比較
 $ git diff [branchA]  [branchB]

#(8) ファイルの比較
 $ git diff -- [file path]

#(9) 別名ファイルの比較
 $ git diff -- [file pathA] [file pathB]

#(10) 変更量を確認する
 $ git diff --stat

#(11) 変更があったファイル名だけ見る
 $ git diff --name-only

 [working dir] <------------------>[staging area]<-------------------->[repository]
                  (3)  git diff                  (4) git diff --cached 



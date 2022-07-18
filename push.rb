Git操作（push)
#git push <remote> <branch>
 <remote> : リモートリポジトリを指定。通常はorigin
 <branch> : ブランチ名：ローカルとリモートの同じ名前のブランチ名
 ※<branch>をHEADにするとローカルHEADにあるブランチがプッシュされる

#(1) リモートリポジトリにプッシュする
 $ git push origin HEAD  # HEADのローカルブランチをリモートにある同名のブランチにプッシュする
 または
 $ git push origin master # ローカルのmasterブランチをリモートのmasterブランチにプッシュする
 または
 $ git push origin [branch] # ローカルの指定ブランチをリモートにある同名のブランチにプッシュする

#(2) 上流ブランチを設定する(-u, --set-upstream)
 $ git push -u origin master
 ※一度-uオプションをつけて実行すれば、次回から
 $ git push
 だけでプッシュできるようになる

#(3) リモートに存在しないブランチを削除する(--prune)
 git push --prune origin
 ※ローカルに存在するが、リモートに存在しないブランチは削除する

#(4) 全てのブランチをリモートにプッシュする(--all)
 git push --all origin

#(5) 強制的にプッシュする（コンフリクトがあってもpushする）(-f, --force)
 git push -f origin

#(6) リモートのブランチ名を変更してプッシュする（ローカルとリモートのブランチ名が異なる場合）
 git push origin master:cat
 ※ローカルのmasterブランチをリモートにはcatブランチ名でpushする 



#Git操作　（ファイル操作）

 # (1) ファイルを削除する
 $ git rm [file]

 # (1-2) ディレクトリを削除する
 $ git rm -r [directory]

 # (2) Gitの追跡対象から外す
 $ git rm [file] --cached
 ※ fileは削除されない

 # (3) ファイル名を変更する（リネーム）
 $ git mv [file1] [file2]
 ※ mvの後にaddが実行される

 # (4) 空ディレクトリをGit管理下にする
 $ mkdir [dir]
 $ touch [dir]/.gitkeep   # 空ファイルを生成しディレクトリに置く
 $ git add .

 # (5) Gitの追跡対象から外す
 .gitignore ファイルに外すファイルを記述する
 既にステージングエリアにある場合は
 git rm --cached でGitの追跡を取り消す
　
 # (6) 削除してしまったファイルを復元する
 $ git checkout [file]
 ※ステージングエリアから復元される。前回コミットしたファイルに戻る。 （編集済み） 


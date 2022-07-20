#Git操作　（設定、config)

#(1) 登録内容の確認
 $ git config --list

#(2) ユーザ登録
 $ git config --global user.name [user name]

#(3) メールアドレス登録
 $ git config --global user.email [mail address]

#(4) エイリアス設定
 $ git config --global alias.[alias name] [command]
 $ git config --global alias.st status

#(5) 設定ファイルの保管場所
 $ ls .git/config


#Git操作（tag, タグ）

#(1)  タグの設定
 $ git tag [tag name] [hash value]  # 軽量版タグ
 $ git tag [tag name] [hash value] -a -m "注釈"  # 注釈付きタグ

#(2) タグの削除
 $ git tag -d [tag name]

#(3) タグ名の確認
 $ git log --oneline
 tag: tag_name

#(4) タグ内容の確認
 $ git show [tag name]

#(5) タグファイルの保管場所
 .git/refs/tags/


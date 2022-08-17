# git bisect 問題箇所を特定する
# 二分探索によって問題箇所を特定するコマンド

 $ git bisect start <bad-commit> <good-commit>

 # V1.0 タグの時点では good で、最新（HEAD）では bad である
 $ git bisect start HEAD V1.0



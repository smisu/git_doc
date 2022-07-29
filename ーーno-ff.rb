# git merge --no-ff [branch]
# --no-ffの意味は No fast-forwardで「fast-forwardをしない」という意味。
# fast-forward(ff)は「早送り」のこと
# fast-forwardを行うとgit log --graph等でマージした[branch]が表示されない
# 通常のマージは--no-ffをつけて実行した方が後で都合がよい

# mergeのデフォルト(--ff)は
# (1) mergeでコミットを行わない
# (2) fast-forward(早送り）でのmergeを行う

# --no-ffオプションをつけてmergeすると
# (1) mergeでコミットを行う
# (2) fast-forwardでのmergeは行わない

# --no-ffをつけないでmergeしたときの問題点
#　masterにtopicAブランチをmergeした場合：
# (1) fast-forwardであるmergeの場合（デフォルトでのmergeの場合）：
#     topicAブランチで行われた作業を参照するのが後で面倒になる。
#     それはmergeのコミットが発行されないため、masterがその後更新されていったときにtopicAの参照が面倒になる。
# (2) mergeの取り消しを行いたいと思った場合、かなり面倒になる。

$ git merge --no-ff [branch]
# ※　通常は--no-ffをつけてmergeした方がよい

# git configでのデフォルトの設定
git config --global --add merge.ff false # mergeのときはffを行わない(--no-ff)
git config --global --add pull.ff only # pullのときのみffを行う(--ff)



#GitLabからのチェックアウト
$ git fetch origin
$ git checkout 'feature1' 'origin/feature1'

GitLabで指示された上記コマンドの説明：
リモートoriginにfeature1ブランチが新たに作成されているとする。
$ git fetch origin　は
リモート側とローカル側のリモート追跡情報ブランチを同期させる。
（リモートブランチのGit追跡情報をコピーする）（リモート側とローカル側のリモート追跡情報を同期させる）
これにより、ローカル側にorigin/feature1が作成コピーされ、リモート側とローカル側が同期される。
次に、 $ git checkout -b 'feature1' 'origin/feature1'　は
ローカルにfeature1ブランチを作成する。そしてこのブランチはorigin/feature1からの出発（分岐、起点）とする。
したがって、ブランチfeature1はリモートoriginのfeature1ブランチと同じ内容となり、同期されることになる。


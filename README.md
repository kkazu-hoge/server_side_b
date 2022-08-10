# README

## 前提環境
サーバーサイドAにて環境構築済<br>
サーバ：EC2<br>
OS：Amazon Lnux2

## 確認手順

①「git clone」でEC2へ「server_side_b」をダウンロード（/home/ec2-user直下）
```
$ git clone https://github.com/kkazu-hoge/server_side_b.git
$ cd server_side_b
```

②gemをインストール
```
$ bundle install
```
③webpackerをインストール、コンパイル
```
$ rails webpacker:install
$ rails webpacker:compile
```

④マイグレーション
```
$ rails db:migrate
```

※マイグレーション実行時にエラーが発生した場合は記載の解消コマンドを実行し、<br>
再度マイグレーションを実行ください。<br>
＜エラー内容＞
```
 Unable to monitor directories for changes because iNotify max watches exceeded.
 See https://github.com/guard/listen/blob/master/README.md#increasing-the-amount-of-inotify-watchers .
 (Listen::Error::INotifyMaxWatchesExceeded)
 ```
＜解消コマンド＞
```
$ sudo sh -c "echo fs.inotify.max_user_watches=524288 >> /etc/sysctl.conf"
$ sudo sysctl -p
```

⑤railsサーバ起動
```
$ rails s
```

⑥動作確認<br>
【url】http://127.0.0.1:3000/
<br>※エディター(VScode)のremote sshプラグインでリモートポートをローカルアドレスに転送しています。(ポートフォワーディング)

⑦確認後はrailsサーバーを停止ください<br>
「ctrl+c」

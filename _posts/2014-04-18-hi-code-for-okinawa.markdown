---
layout: post
title:  "こんにちはcode for おきなわ"
date:   2014-04-18
categories: diary
---

Code for Okinawa入ってみた。自己紹介を書く文化らしい。最近あまり自己紹介していないので悩む。

## RSpecについて
一家言ないけど別で書く。

## 悪乗りChrome Extension
[mtsmfm/looks-trombone-to-me](https://github.com/mtsmfm/looks-trombone-to-me)

楽しそう

## 仕事
小さいPul Request心がけているが育つ育つ...

## Code for おきなわ
とりあえず自己紹介を書いた。5374をforkしてかこうかな。
画面壊滅的に見づらい気がするんですが気になる方いないんですか。

[5374沖縄県豊見城市版ができました](http://skurima.com/2013/12/30/tomigusuku-5374-jp.html)

見てみたけど、skurimaさんやべー。すげー。
プログラマの人がこれつくれるの、結構頑張らないとアレそう。
SaaSで、Railsで、さくっとwebのUIからだけで色々設定出来るといいのかなという妄想が膨らみますね。
今度やろう。

### 5374

那覇市版が欲しいと思って情報を集めている。

とりあえずHerokuにDyno建てた

- [5374](http://naha-5374.herokuapp.com/)

とりあえず

- okinawarb/5374でissueたてれるよにする(settingsからissueほにゃららにチェック　)
- travisの連携を設定して、Herokuにデプロイする([ここらへん](http://docs.travis-ci.com/user/deployment/heroku/))参考になる
- 古波蔵の情報追加
- 必要そうなPull Requestを出した
- Facebook Groupにも近況書いた
- Idobataにtravis/github/heroku連携を設定

#### 那覇市のゴミ情報

#### 参考になりそう
[setagaya-citizens/5374](https://github.com/setagaya-citizens/5374)

#### Pull Request出した
- [デバッグ用のWebサーバーが欲しい by hanachin · Pull Request #23 · codeforkanazawa-org/5374](https://github.com/codeforkanazawa-org/5374/pull/23)
- [target.csvのtypeを、description.csvに合わせて、labelに変更した by hanachin · Pull Request #24 · codeforkanazawa-org/5374](https://github.com/codeforkanazawa-org/5374/pull/24)

[rack でカレントディレクトリを公開する](http://tricknotes.hateblo.jp/entry/20110727/p1)が便利情報だった。

僕はこうした

``` ruby
use Rack::Static, :index => 'index.html'
run Rack::Directory.new(File.dirname(__FILE__))
```

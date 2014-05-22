---
layout: post
title:  "Weblateためそ"
date:   2014-05-19
categories: diary
---

## PO
仕様を読まねばならない感じがする。
今度読もう。

## マサカリ
[エンジニアから飛んでくるマサカリを受け止める心得](http://www.slideshare.net/re_3_19/ss-34793007)

マサカリ投げる態度が気に食わないなら、知ってるがお前の態度が気に食わないということを表明すればいいと思いました。
もっとカジュアルに投げ合わないと分かり合えないと思う。

## 開発合宿
[開発合宿をする際の知見 - 昼メシ物語](http://blog.mirakui.com/entry/2014/05/18/173138)

文豪みたいに一人で行ってみたいな。

## Sqwiggle
[Sqwiggle が良いという話、またはリモートでアジャイル開発をどう進めるか - naoyaのはてなダイアリー](http://d.hatena.ne.jp/naoya/20140512/1399864629)

試したけど音声がなんかうまく伝わらなかった。

## 読む
[Parakeety's blog](http://parakeety.github.io/)

## 読む2
[shirasagi/shirasagi](https://github.com/shirasagi/shirasagi)

- routesの分割の仕方面白い
  - Railsでは`config.paths['config/routes.rb']`に`routes.rb`入れとくと読んでくれるっぽい
- config/samplesディレクトリ切るのいい
  - sampleと本物が縦に並ばない
  - sampleまとまってるとどれコピればいいのか分かりやすい
- 動かしたくなる
  - bundle installだるい. libv8が...
  - brew install mongodb
  - doc/install.txtを読む
    - cp config/samples/*.yml config
    - be rake db:create_indexes
    - be rake ss:user:create data='{ name: "user", email: "user@example.jp", password: "pass" }'
    - be rake ss:site:create data='{ name: "Your Site", host: "www", domains: "localhost:3000" }'
    - be rake db:seed name=demo site=www
    - be rails sで動いたっぽいけどいろいろ化けてる
- bin/deploy何かと思ったらassets precompileしてるだけっぽい
  - assets precompileしてからthin start -dで起動

## late 2008 MBPをMavericksまであげる
Leoaprdから直接はあげれないので1回Snow Leopardにあげる。

### LeopardからSnow Leopardにあげる
まずSnowLeopardをポチります。

AirDriveはAir専用なのか〜。ダルい。認識しなかった。
仕方がないのでギー沖にあるDVDドライブを借りてきた。デカい。
起動時にDVD選んでインストールするとうまくいった。
起動おわってからインストールやるとダメ。

### Mavericksにあげる
Snow Leopardを10.6.8まで上げたあと上げる。
ダウンロード数GBある。ダルいな....

あげたらAppStoreでMavericks落とす。
更にダルい。

Mavericksインストールしたらアップデートかけて、完了。
起動時間とかディスクの読み込みに時間かかってる気がする。
メモリとSSD見積もる。

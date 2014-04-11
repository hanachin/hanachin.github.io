---
layout: post
title:  "東京に来た"
date:   2014-04-10
categories: diary
---
寝たくない。
泊まる場所は、適当に入ろうと思ってるんだけど、カタカタ音が気にならないところにいきたい。

## これは昨日の分も含む
日付変わってから`rake diary`した。

## konjak
RubyでTMX扱いたいのでgemを作っている。
翻訳こんにゃくというのがあって、それをイメージして名前はこんにゃく。
実装はまだない。

### 規格
[Localization-Related Formats](http://www.w3.org/2002/02/01-i18n-workshop/LocFormats)

標準規格あるんだね。

## いいKeynoteテンプレートいい
[大体いい感じになるKeynoteテンプレート「Azusa」作った - MEMOGRAPHIX](http://memo.sanographix.net/post/82160791768)

## はてブ to Idobata欲しい
WebHookのURL設定して投げれるようにしたいな

[はて豚](https://github.com/hanachin/hatebuta)で開発しようと思う。
fluentdとか使うのがなういのかな。

### 参考になりそうなURL
- [Ruby - fluent-plugin-hatena-bookmarkつくった - Qiita](http://qiita.com/yuiseki/items/ff00b3db0a2c6121f1a3)
- [はてなブックマーク Web Hook - Hatena Developer Center](http://developer.hatena.ne.jp/ja/documents/bookmark/apis/webhook)

## 難しい話
[南よ! 海の見える方! - ソフトウェアを作るのは、意外と難しい](http://karino2.livejournal.com/247298.html)

今でも難しいと思ってる

## 自動デプロイ環境
整えつつある。

従来、Herokuにpushしていたところを、GitHubにpushすれば自動デプロイされるようになった。
リンク切れを調べるテストや、Rails 4.0を見てる最中3.2版のチュートリアルに切り替わらないことを確かめるテストや、サイドバーでRails 3.2/4.0を切り替えられることを確かめるためのテストなどが走っている。

---
layout: post
title:  "雑なオープンソース"
date:   2014-04-27
categories: diary
---

## 出したPull Request
[Registering tegaki-jan as a bower package by hanachin · Pull Request #1 · mtsmfm/tegaki-jan](https://github.com/mtsmfm/tegaki-jan/pull/1/)

## 充実したコンテンツ
[5374那覇市版](http://naha-5374.herokuapp.com/)

Code for Okinawaのリポジトリに移してGitHub Project Pagesにしたい。

## オープンソースの翻訳ツール
[Pootle - Wikipedia](http://ja.wikipedia.org/wiki/Pootle)

出来良さそう

## 翻訳
画像を文字に対応させるとかあると面倒くさそうな気がした。

- 元の文章のテキスト
- テキスト(テキストの並び)を置き換える
- リンクを張り替える
- 画像を置き換える

など段階的なfilterを書けてくのがいいんじゃないかと思う。

などなど思いながら色々ググったらpoやpo4aの存在をしる。

Konjakは一旦停止だ。

### po4a

- [PO ファイルで翻訳管理](http://www.slideshare.net/nabetaro/po-7177145)
- [po4a - ようこそ](http://po4a.alioth.debian.org/)
- [DartRefJP ドキュメントのローカライズに際し po4a を使ってみる？それとも… (part 1) - C++ ときどき ごはん、わりとてぃーぶれいく☆](http://usagi.hatenablog.jp/entry/2012/03/07/025826)

既に実績いっぱいあるっぽい。便利そうだ。

RubyからPO扱うのもある。

- [ruby-gettext/gettext](https://github.com/ruby-gettext/gettext)

便利にpo4aするためのツールなのかauto-po4aというのがあるっぽい

- [auto-po4a/README.ja at master · usagi/auto-po4a](https://github.com/usagi/auto-po4a/blob/master/README.ja)

なんか素晴らしい会がある。doc-ja。

- [FrontPage - Doc-ja Archive Project](http://openlab.ring.gr.jp/doc-ja/cgi-bin/fswiki/wiki.cgi)
- [Doc-ja Advent Calendar 2013 - Qiita](http://qiita.com/advent-calendar/2013/docja)

### Pootle

- [LibreOfficeの翻訳に挑戦してみよう！/Let's try to translate LibreOffice!](http://www.slideshare.net/naruoga/lets-try-to-translate-libreoffice)

## TDD
[【TDDを再定義したほうがいいって話だったのさ】UncleBob, Martinfowler, DHHのツイートまとめ - Togetterまとめ](http://togetter.com/li/659856)

## 更新
[hanachin/idobata-api-doc](https://github.com/hanachin/idobata-api-doc)からライブラリにリンクを張るなどした。

## [amatsuda/gem-src](https://github.com/amatsuda/gem-src)
うおおお便利そう。便利そうだけど容量が心配なので、使わないかも。

## Docker
po4a入れただけの単純なやつ書いた。

- brewでdockerのバージョンとboot2dockerのバージョンあげた
- boot2dockerのdockerのバージョンあげるために
  - `boot2docker delete`
  - `boot2docker download`
  - `boot2docker init`
  - `boot2docker up`
  - `docker version`で確認

### ディレクトリ共有出来るっぽい(!!)
[Sharing Directories using volumes - Docker Documentation](http://docs.docker.io.s3-website-us-west-2.amazonaws.com/use/working_with_volumes/)

### Pootleのもある
まだ試してない

[JannKleen/pootle-docker](https://github.com/JannKleen/pootle-docker)

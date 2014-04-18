---
layout: post
title:  "自分でつくる"
date:   2014-04-17
categories: diary
---
## 終業したらやりたいやつ
- [OpenSSL マジヤバいっす！ ～ Heartbleed 脆弱性を試してみたよ - モラトリアムこじらせた](http://nyagao.hateblo.jp/entry/2014/04/10/222546)
- [r7kamura/ellen](https://github.com/r7kamura/ellen)
- [Typing Practice for Programmers | typing.io](http://typing.io/)

## 自分でつくること
大事ですよね。規格に沿って実装するのも楽しいけど。
前に言語デザイナー最強説を説いてた話を聞いたんだけど、規格とかガン無視でそれなりに使いやすいものを作ったほうが楽しいのかもしれない。
と、自分でガンガン作りまくってる人みて思いました。

## TurnipにPull Requestを送る
仕事で書いてて使えなくてこまったのでPull Requestを出した。

[substitute doc string in scenario outline by hanachin · Pull Request #121 · jnicklas/turnip](https://github.com/jnicklas/turnip/pull/121)

メンテナー募集してるみたいだし、レビューされるのだいぶ後かもしれない感ある。

## Pull Requestベースの開発
全てコメント欄でコードを書いてからコミットする、とかそういうのあっても面白そうだと思ったが多分不愉快になってくるだろうな。
その行にコメントできるのと修正したらコメントが消えるdiff便利。

## Qiita
Qiitaたまにポエムみたいなのがあってヤバイ

[Qiita気に入り始めたけど、 - Qiita](http://qiita.com/bukowski1920/items/eef4c7224c7a35802974)

## 購入
### [Confident Ruby](http://www.confidentruby.com/)

PragmaticBookshelfからメール着てて読みたかったんだけど、おんださんが読んでるらしいし良本っぽい。買った。

## 読んだ
### [VSハッカソン特別編『今日から始めるGit & GitHub入門』でしゃべってきました。 - 亀岡的プログラマ日記](http://posaune.hatenablog.com/entry/2014/04/17/001530)

平行世界、わかりやすくていい。
ただ、たどることができなくなったり、認知されていない平行世界はGCで消えちゃうんだよな...

### [三十路でひとり結婚式](http://30alone.com/)
楽しそう

### [「バイナリ畑でつかまえて」最新記事一覧 - ITmedia Keywords](http://www.itmedia.co.jp/keywords/binaryfield.html)
よかった

### [Domain hack - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Domain_hack)
TLDを単語に含める`del.icio.us`とかそういうのがドメインハックという項目でまとまってて便利。

### [CSS Vocabulary](http://pumpula.net/p/apps/css-vocabulary/)
CSSのあの部分なんていうの?がぱっと見で分かる便利サイト

### [GithubのPull Requestをローカルにfetchする - 銀の人のメモ帳](http://gin0606.hatenablog.com/entry/2013/12/19/185439)
便利情報だった

### ざっとみ

- [【Rails 高速化】ペパボのフリマアプリ「kiteco（キテコ）」の API を高速化したときのことを詳しく書いてみた - 彼女からは、おいちゃんと呼ばれています](http://blog.inouetakuya.info/entry/2014/02/08/221438)
- [Ruby Patterns - ✘╹◡╹✘](http://r7kamura.hatenablog.com/entry/2014/01/22/223346)
- [私がかつてTDDに対して誤解していた点 - エンジニア的なネタを毎週書くブログ](http://taichiw.hatenablog.com/entry/2014/02/05/113417)

## 雑感
URLはるの結構だるいしはてブでいいかなという気持ちもある

## Inboxを空
結構な労力。

## RSpecApiDocumentation
生成されるドキュメント中に、例えばURL Helperを使って生成したURLがあると、hostがなんかおかしい。
`Rails.application.routes.default_options[:host] = "hanach.in"`ればいいという話も見たんだけど、それよりも優先されてる値が送られてきてるっぽい。
いろいろ見たら、`request.env.['HTTP_HOST']`が設定されてるようで、RSpecApiDocumentationからそれを設定出来るかというと、設定出来るインターフェースがなかった。
仕方がないから`stub_const`した。

``` ruby
stub_const(Rack::Test::DEFAULT_HOST, 'hanach.in')
```

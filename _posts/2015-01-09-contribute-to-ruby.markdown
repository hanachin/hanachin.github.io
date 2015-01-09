---
layout: post
title:  "Rubyにコントリビュートした"
date:   2015-01-09
categories: post
---

生まれて初めてRuby書いた。[ChangeLogに僕の名前が載った](https://github.com/ruby/ruby/compare/ruby:759a31b...ruby:3f8ceab)。うれしい。

- [Bug #10706: Segmentation fault when change visibility of refined new method - ruby-trunk - Ruby Issue Tracking System](https://bugs.ruby-lang.org/issues/10706)
- [Bug #10707: Segmentation fault when get refined new method in BasicObject - ruby-trunk - Ruby Issue Tracking System](https://bugs.ruby-lang.org/issues/10707)
- [Comparing 759a31b...3f8ceab · ruby/ruby](https://github.com/ruby/ruby/compare/ruby:759a31b...ruby:3f8ceab)

## 経緯

Refinement周りでSEGVして落ちる現象を見つけた。

お正月で下調べしたところ`vm_method.c`周りで落ちるコード例を複数みつけたので雑に直してみた。
雑に直した結果、複数のバグを直すコードが1つに混ざってしまった。
正月明けてからはパッチを送るのを目標に、一旦整理しなしていた。
個別にテストを書いてバグを直し、コントリビュートできるように準備。
水曜日のOkinawa.rbの日に[Ruby Issue Tracking System](https://bugs.ruby-lang.org/)にアカウントを登録し、報告した。

次の日、nobuさんにパッチを取り込んでもらえた :tada:

## 報告方法、パッチの作り方

具体的な報告方法や、パッチの作り方は、しばたさんのRubyKaigiの話と公式のHowToReportJaを参考にした。具体的なパッチの作り方とか、報告する際に気をつけるポイントが書かれていてとても参考になった。

- [HowToReportJa - Ruby - Ruby Issue Tracking System](https://bugs.ruby-lang.org/projects/ruby/wiki/HowToReportJa)
- [▶ The Twelve-factor Ruby 「Ruby を良くするための12のポイント」 - RubyKaigi 2014 - YouTube](https://www.youtube.com/watch?v=PyzX4U4nvR8)
- [The Twelve-factor Ruby // Speaker Deck](https://speakerdeck.com/hsbt/the-twelve-factor-ruby)

投げたパッチそのまま取り込まれたわけではなくより適切な場所で直されていた。
どこで直せばいいか悩んでいる場合もとりあえず投げてみるものだと思った。
あとChangeLogの文章も追加してもらえて大変ありがたい。

### テストを書いた

[Ruby Issue Tracking System](https://bugs.ruby-lang.org/)に報告されたバグは、ruby-coreあるいはruby-devにメールが流れる。
bugsに報告があった場合、以下のような感じでassertのメッセージにruby-coreの番号と、bugsのチケット番号を書くのが慣例のように見えた。

``` ruby
bug10707 = '[ruby-core:67389] [Bug #10707]'
module RefinementBug
  refine BasicObject do
    def foo
    end
  end
end

assert(methods, bug10707)
assert_raise(NameError, bug10707) {method(:foo)}
```

## よかったこと

- Rubyへ貢献できた
- 短いコードを実行するだけで必ずSEGVするので問題がわかりやすかった
  - 再現できるのでパッチが書きやすい
- SEGVを直すことにフォーカスできた
  - <a href="http://www.amazon.co.jp/gp/product/4274050653/ref=as_li_ss_tl?ie=UTF8&camp=247&creative=7399&creativeASIN=4274050653&linkCode=as2&tag=wwwhanachin-22">Rubyのしくみ</a><img src="http://ir-jp.amazon-adsystem.com/e/ir?t=wwwhanachin-22&l=as2&o=9&a=4274050653" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
  や[RHG](http://i.loveruby.net/ja/rhg/)を事前に流し読んでいたので、デバッグやCRubyのしくみなど、SEGV以外についてある程度理解があった
  - たまにCRubyのソース読んでいた
  - Rubyのしくみを読むためにデバッグ環境を整えて、素振りで練習していた
  - にたような問題が以前bugsにあがっていたので参考にできた
- RubyがSEGVしたときデバッグする経験がつめたので、次SEGVおきても怖くない

他いろいろ知見あったきがするけどgdbのマクロがruby/rubyに添付されててデバッグ便利そうだからgccでコンパイルしておけばよかった、みたいなしょうもないのもある。

## 感謝
ちょっとだけRuby直すのチャレンジしてみたけど大変だった。

Rubyのコアコミッターの人たち、こういうバグ報告をうけて毎日直すのなかなかすごい。
報告受けて調べて、パッチあったらパッチ見てレビューして当てて...(自分で直すより大変なのでは)

Ruby開発者の方々への感謝の気持ち深まった。ありがとうございます。

<a href="http://www.amazon.co.jp/gp/product/4274050653/ref=as_li_ss_tl?ie=UTF8&camp=247&creative=7399&creativeASIN=4274050653&linkCode=as2&tag=wwwhanachin-22">Rubyのしくみ</a><img src="http://ir-jp.amazon-adsystem.com/e/ir?t=wwwhanachin-22&l=as2&o=9&a=4274050653" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />や[RHG](http://i.loveruby.net/ja/rhg/)のおかげでRubyのしくみちょっと分かるようになった。
この本なかったら貢献出来なかったと思う。
ありがとうございます。

<a href="http://www.amazon.co.jp/gp/product/4274050653/ref=as_li_ss_il?ie=UTF8&camp=247&creative=7399&creativeASIN=4274050653&linkCode=as2&tag=wwwhanachin-22"><img border="0" src="http://ws-fe.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=4274050653&Format=_SL250_&ID=AsinImage&MarketPlace=JP&ServiceVersion=20070822&WS=1&tag=wwwhanachin-22" ></a><img src="http://ir-jp.amazon-adsystem.com/e/ir?t=wwwhanachin-22&l=as2&o=9&a=4274050653" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />

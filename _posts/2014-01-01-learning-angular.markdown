---
layout: post
title:  "AngularJSを勉強している"
date:   2014-01-01
categories: diary
---
# AngularJSを勉強している

買った本を読みながら勉強している

## AngularBatarang
scopeのnestingを表示したり、パフォーマンスを表示したりできるよう。
[angular/angularjs-batarang](https://github.com/angular/angularjs-batarang)

ただ、`file:///`とかで表示するとうまく出ない。適当に`config.ru`書いてやるとよさそう。

``` ruby
use Rack::Static, urls: ['/js', '/css'], root: __dir__
run lambda {|env| [200, { 'Content-Type' => 'text/html' }, File.open('index.html', File::RDONLY)] }
```

## 抱負
- 生き延びる
- 貯金する
- 痩せる

## 痩せ状況について
18kg痩せたあと6kgリバウンドし、着衣だと80kgを超えてしまいました。
痩せようと思います。

## コードを毎日書きたい
今日、チュートリアルのコードなどしか書いてない。
最低限ブログ見れるぐらいは書こうと思う。

## travis-ci
`language`に複数指定はできない。
ただ、それぞれのWorkerに最新の環境1つはいってるので、そこまで困らないのかもしれない

[Travis CI: The Build Environment](http://about.travis-ci.org/docs/user/ci-environment/)

## yo
自動で上書きされたり変更されたりするので、ちゃんとバージョン管理しないとyoコマンド実行するのが不安。

- routeをきるとviewやcontrollerも自動で作られて便利→`yo angular:route diary`
- Grunt用のもあるぽい `npm install generator-grunt -g`
- `yo --help`で使えるタスク見れる

## Angular.JS
面白い

- [AngularJS: Getting Started](http://docs.angularjs.org/misc/started)
- [AngularJS: Conceptual Overview](http://docs.angularjs.org/guide/concepts)

ここらへんおさえるのが良さそう。
とりあえずいくつか覚えた。書いてないから忘れそう。明日こそは...
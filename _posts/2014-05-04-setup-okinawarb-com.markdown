---
layout: post
title:  "okinawarb.comを設定するか"
date:   2014-05-04
categories: diary
---

## okinawarb.comのDNS設定
とりあえずRoutes 53で設定する。
ドメイン自体は安かったのでお名前.comでとった
が、よくよく考えたらokinawarb.orgでは...ということでとりなおした。

comがcommercialなの忘れてたマンです。

### okinawarb.com -> www.okinawarb.org、okinawarb.org -> www.okinawarb.orgへリダイレクト
- [ネイキッド・ドメインのリダイレクトをRoute53 + S3で実現する | mah365](http://blog.mah-lab.com/2013/05/09/naked-domain-redirect-with-route53-s3/)


### CNAMEを置く
[okinawarb/okinawarb.github.io](https://github.com/okinawarb/okinawarb.github.io/)においた。
[okinawarb/meetups](https://github.com/okinawarb/meetups)にもおいたけど、親のプロジェクトにしか置けないっぽい。(かぶってると警告が出る)

## RHG
`hanachin/rhg`に読みようの`Dockerfile`をpushした。
`emacs`に`gtags`の設定とかしてやらねばならぬ。
[hanachin/dockerfilesのrhg](https://github.com/hanachin/dockerfiles/tree/master/rhg)においた。

## 読みたい
[Emacs - コードリーディングにとっても便利な GNU GLOBAL と gtags.el (と anything-gtags.el) をつかおう - Qiita](http://qiita.com/yewton@github/items/d9e686d2f2a092321e34)

## API情報です
- [interagent/heroics](https://github.com/interagent/heroics)
- [JSON Schema and Hyper-Schema](http://json-schema.org/)
- [draft-zyp-json-schema-03 - JSON Schema: core definitions and terminology](https://tools.ietf.org/html/draft-zyp-json-schema-03)
- [Heroku | Auto-generating a Go API client for Heroku](https://blog.heroku.com/archives/2014/1/9/auto_generating_a_go_api_client_for_heroku)

便利そう。

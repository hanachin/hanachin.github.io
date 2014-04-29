---
layout: post
title:  "dockerに再挑戦"
date:   2014-04-29
categories: diary
---

## 入れた
[rimusz/boot2docker-gui-osx](https://github.com/rimusz/boot2docker-gui-osx)
便利ツールっぽいやつ。

OSX->boot2docker->dockerだとOSXとdocker間で直接ディレクトリ共有出来ないのがツラミある。
そこらへんもにょもにょしてくれるっぽい。

なんかうまくいかなかったや。

## localeゥ...
`locale-gen`したり`LANG`をUTF-8にしないとRubyが空気読みすぎて辛かった。

## hiki動かすdockerファイル
とりあえず作った

- [dockerfiles/hiki/Dockerfile at master · hanachin/dockerfiles](https://github.com/hanachin/dockerfiles/blob/master/hiki/Dockerfile)
- [hanachin/hiki Repository | Docker Index](https://index.docker.io/u/hanachin/hiki/)

## Beanstalk
ここらへん詳しい。

[Dockerfile and Dockerrun.aws.json - AWS Elastic Beanstalk](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_docker_image.html)

volumesあたりまで確かめた。

- Elasticbeansで作ったwebインスタンス入るためにkey pairを設定しないとダメっぽい。EC2の入り方とか確認したかった。
- デプロイするためのjsonのファイル名とlabel合わせてたほうがわかりやすそう
- やはり再起動すると消える
  - 消したくないやつはVolumesでEBSに置くようにするとよい

ログ周りは、本格運用考えてないし、またこんど。


## 週末に遊ぶ
Dockerとかいじって遊ぶのとても楽しい。
g

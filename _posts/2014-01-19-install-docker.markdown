---
layout: post
title:  "Docker入れる"
date:   2014-01-19
categories: diary
---
# Docker入れる
- [公式のDocker client for OSXがリリース | SOTA](http://deeeet.com/writing/2014/01/10/docker-from-osx/)

もちろんboxenで入れる。

``` ruby
include homebrew
homebrew::tap { 'homebrew/binary': }
package {
  'docker':;
}
```

Puppetのexample、`;`と`:`見間違うし省略できるとしても省略せずに`;`書いてほしいなと思う。

## Vagrantfileとか設定する
あとでやる

# 散歩
昨日37kmぐらい歩いて超疲れたので今日は控えめにした。浅草方面歩いた。

# 仕事
月曜に向けて色々整えたく整理している。
あと1つできればとりあえず諸々デモれるはずなんだよな。

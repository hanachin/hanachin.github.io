---
layout: post
title:  "sphinx-intl"
date:   2014-05-10
categories: diary
---

locale_dirのパスの設定がうまく行ってないとあかんことがわかった。

```
$ sphinx-intl build -d locale
$ make -e SPHINXOPTS="-D language='ja'" html
```

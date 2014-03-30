# -*- coding: utf-8 -*-
require 'erb'
require 'shellwords'

task :default

class Post
  attr_accessor :title, :categories

  def initialize(title, time: Time.now, categories: [])
    @title      = title
    @time       = time
    @categories = categories
  end

  def datetime
    @time.strftime('%Y-%m-%d %H:%M:%S')
  end

  def date
    @time.strftime('%Y-%m-%d')
  end

  def ftitle
    title.gsub(%r{['".!@#$%^&*\(\)\|><?\{\}~+_]}, '').gsub(%r{[/ ]}, '-') # 適当
  end

  def filename
    fname  = "_posts/#{date}-#{ftitle}.markdown"
  end

  def to_s
    ERB.new(<<TEMPLATE).result(binding)
---
layout: post
title:  <%= title.inspect %>
date:   <%= date %>
categories: <%= categories.join(',') %>
---
TEMPLATE
  end
end

desc "今日の日記を書こう"
task :diary do
  puts "タイトルどうする?"
  post = Post.new STDIN.gets.chomp, categories: %w(diary)
  File.write(post.filename, post.to_s) and `emacs #{Shellwords.escape post.filename}`
end

desc "記事を書こう"
task :post do
  puts "タイトルどうする?"
  post = Post.new STDIN.gets.chomp, categories: %w(post)
  File.write(post.filename, post.to_s) and `emacs #{Shellwords.escape post.filename}`
end

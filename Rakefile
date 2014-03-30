require 'erb'
require 'shellwords'

task :default

desc "今日の日記を書こう"
task :diary do
  puts "タイトルどうする?"
  title  = STDIN.gets.chomp
  ftitle = title.gsub(%r{['".!@#$%^&*\(\)\|><?\{\}~+_]}, '').gsub(%r{[/ ]}, '-') # 適当
  time   = Time.now
  date   = time.strftime('%Y-%m-%d %H:%M:%S')
  fname  = "_posts/#{time.strftime('%Y-%m-%d')}-#{ftitle}.markdown"
  File.write(fname, ERB.new(<<TEMPLATE).result(binding)) and `emacs #{Shellwords.escape fname}`
---
layout: post
title:  <%= title.inspect %>
date:   <%= date %>
categories: diary
---
TEMPLATE
end

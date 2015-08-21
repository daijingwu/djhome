#!/bin/bash

git config --global user.email "daijingwu@gmail.com"
git config --global user.name "Daijing Wu"
# alias
git config --global alias.st status
git config --global alias.co checkout

# Git 對於空白的變化便會忽略不計
git config --global apply.whitespace nowarn

# Git 預設輸出有顏色#
git config --global color.ui true

cat ~/.gitconfig




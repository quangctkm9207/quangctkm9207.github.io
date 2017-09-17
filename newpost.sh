#!/bin/bash
# Short script to create new post file quickly.
# Quite lazy to write a long post's file name (yyyy-mm-dd-blog-post-name.md)

# ./newpost file-name

now="$(date +'%Y-%m-%d')"
file="./_posts/$now-$1.md"
touch $file
/bin/cat <<EOM >$file
---
layout: post
title: Post Title
comments: true
---
EOM

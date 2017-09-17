---
layout: post
title: Create Jekyll post file title lazily
comments: true
---

[Jekyll](https://jekyllrb.com/) is an awesome static site generator which helps us to create a website easily. A feature which I evaluate highly is that setting up a blog by Jekyll is done in just few steps. It also supports [pagination](https://jekyllrb.com/docs/pagination/), so fantastic.  

At first, I felt so weird in one point when setting my own blog by Jekyll. When creating a new blog post, we always need to put date on its file title following this pattern `yyyy-mm-dd-post-title.md`. i.e: `2017-09-17-jekyll-blog-post.md`. It is a must although the date can be re-defined in **front-matter** as below.  

```
layout: page
title:  Jekyll Blog Post
date:   2017-09-17 12:34:20
```  

On a [discussion on Github](https://github.com/jekyll/jekyll/issues/2282), @Parker pointed out that.
> The idea for putting it in the title is to enforce the idea that posts are date-centric. It's part of jekyll's "blog-aware" features.  

So, there is no any other choice, but I actually do not want to put a boring looong date on file title  every time I create a new post. As you know, laziness has been nourished in our nature. :innocent:

A quick solution I came up with is using a simple `bash script`. I created a script file named `newpost.sh` in my site root directory and put simple commands inside to get work done.  
```bash
now="$(date +'%Y-%m-%d')"
file="./_posts/$now-$1.md"
touch $file
/bin/cat <<EOM >$file
---
layout: post
title: Post Title
---
EOM
```  
It might need to set it as an executable file.
```bash
$ chmod +x newpost.sh
```
From now on, when creating a new post, running a simple command is enough.
```bash
$ ./newpost post-title-sample
```
It will automatically generate a blog post file `yyyy-mm-dd-post-title-sample.md` under `_post` folder, and put a default `front-matter` content inside too.  

That is a shortcut for a lazy man like me in the world.:shipit::bowtie:

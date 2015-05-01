---
layout: post
title:  atime vs mtime vs ctime
date:   2015-05-01
category:  " Tech "
---

atime: access_time
mtime: modification_time
ctime: change_time


mtime 特指文件内容变化，mtime更新的时候会更新ctime
ctime 文件改名、属性、属主，变化的时候，ctime都会变化，此时mtime不会变。
为了避免频繁的更新atime，系统本身会限制更新atime，更新mtime的时候，会更新atime
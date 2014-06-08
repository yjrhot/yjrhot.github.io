---                                                                                               
layout: post                                                                   
title: 自动化生成日志文件                                            
date: 2014-06-09 03:56                                                         
category: " Tech "                                                             
---    

根据jekyll的规则，每次写博客的时候都要创建一个类似2014-xx-xx-name.md文件   


写了一个简单的shell脚本，自动创建符合要求的文件，并用Sublime Text 2 打开。    


脚本如下：
	#!/bin/bash                                                                                             
	file=$(date +%Y-%m-%d)-$1.md                                                   
	touch $file                                                                    
	sublime  $file    
其中：
要让shell识别sublime命令需要把它添加到 /usr/local/bin/ 路径下，具体方法如下：
	ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime    
另外，还有说可以通过alias方法来加入sublime命令。我在~/.profile文件中添加了   
	alias sublime='open -a "Sublime Text 2"'   
添加后在命令行可以识别sublime命令，但在shell脚本中不能识别。猜测如果修改的是/etc/profile应该就没有问题了，未做试验。    

---
layout: post
title: Sublime Text2 中运行PHP
date: 2014-06-09
category: " Tech "
---


###本文参考[这篇文章](http://blog.segmentfault.com/tony/1190000000395951 "Title")



###修改Sublime配置文件

添加php的build system，如下图所示：

![alt text](./images/sublime-php.png "fish")


选择New Build System,添加如下内容：

	{
 	    "cmd": ["php", "$file"],
	    "file_regex": "php$",
	    "selector": "source.php"
	}


保存在默认的目录下即可，注意修改文件名为 php.sublime-build

###体验Sublime-php环境
	<?php
	// fill an array with all items from a directory
	$handle = opendir('.');
	while (false !== ($file = readdir($handle))) {
    $files[] = $file;
	}
	print_r($files);
	closedir($handle);
	?>

command +B运行，执行结果如下图所示：
![alt text](http://coolawk.com/images/sublime-php2.png "console")
--- 如何执行一个sql脚本
Linux：
source /root/github/sql/4-where.sql

windows:
参考：
https://github.com/grb2015/leetcode/blob/master/sql/3_employees-earning-more-than-their-managers.sql
如下
windows下如何执行mysql脚本：
解决方法a：使用Navicat，表-->运行sql文件
解决方法b: mysql -u root -p 之后，在mysql的命令行 source XX.sql 但是如果sql文件用的是utf-8编码,那么
		  好像windows的命令行由于还是gbk编码会出错,这个可以再看一下怎么解决。

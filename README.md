# SQL 快速学习
Sams Teach Yourself SQL I 10 Minutes 4th Edition  (中文名： sql 必知必会（4th）)


下载书中源码：
http://forta.com/books/0672336073/TeachYourselfSQL_MySQL.zip
下载后的编码create.txt有点问题，source /root/github/sql/src/create.txt不成功，可用notepad++ 修改编码为utf-8
代码中的TeachYourselfSQL_MySQL.zip是转码后的，可正确运行。


启动mysql 命令行,如果不知道如何运行sql脚本，一条一条的插入create和populate语句即可。
如何执行脚本？ 打开mysql 

执行脚本：
mysql> source /root/github/sql/src/create.txt


更多帮助，可借助help命令：


mysql> help

For information about MySQL products and services, visit:
   http://www.mysql.com/
For developer information, including the MySQL Reference Manual, visit:
   http://dev.mysql.com/
To buy MySQL Enterprise support, training, or other products, visit:
   https://shop.mysql.com/

List of all MySQL commands:
Note that all text commands must be first on line and end with ';'
?         (\?) Synonym for `help'.
clear     (\c) Clear the current input statement.
connect   (\r) Reconnect to the server. Optional arguments are db and host.
delimiter (\d) Set statement delimiter.
edit      (\e) Edit command with $EDITOR.
ego       (\G) Send command to mysql server, display result vertically.
exit      (\q) Exit mysql. Same as quit.
go        (\g) Send command to mysql server.
help      (\h) Display this help.
nopager   (\n) Disable pager, print to stdout.
notee     (\t) Don't write into outfile.
pager     (\P) Set PAGER [to_pager]. Print the query results via PAGER.
print     (\p) Print current command.
prompt    (\R) Change your mysql prompt.
quit      (\q) Quit mysql.
rehash    (\#) Rebuild completion hash.
source    (\.) Execute an SQL script file. Takes a file name as an argument.
status    (\s) Get status information from the server.
system    (\!) Execute a system shell command.
tee       (\T) Set outfile [to_outfile]. Append everything into given outfile.
use       (\u) Use another database. Takes database name as argument.
charset   (\C) Switch to another charset. Might be needed for processing binlog with multi-byte charsets.
warnings  (\W) Show warnings after every statement.
nowarning (\w) Don't show warnings after every statement.

For server side help, type 'help contents'


注： 上面的关键字都是mysql命令，比如use  test;    比如清屏 system clear
如果我们需要查找从字符串中提取时间：'2008-02-03',我们想知道mysql的函数集
进行查找：


mysql> help contents
You asked for help about help category: "Contents"
For more information, type 'help <item>', where <item> is one of the following
categories:
   Account Management
   Administration
   Compound Statements
   Data Definition
   Data Manipulation
   Data Types
   Functions
   Functions and Modifiers for Use with GROUP BY
   Geographic Features
   Help Metadata
   Language Structure
   Plugins
   Procedures
   Storage Engines
   Table Maintenance
   Transactions
   User-Defined Functions
   Utility


mysql> help Date and Time Functions
You asked for help about help category: "Date and Time Functions"
For more information, type 'help <item>', where <item> is one of the following
topics:
   ...
   MICROSECOND
   MINUTE
   MONTH
   MONTHNAME
   NOW
   PERIOD_ADD
   PERIOD_DIFF
   QUARTER
   SECOND
   SEC_TO_TIME
   STR_TO_DATE
   SUBDATE
   SUBTIME
   SYSDATE
   TIME FUNCTION
   TIMEDIFF
   TIMESTAMP FUNCTION
   TIMESTAMPADD
   TIMESTAMPDIFF
   TIME_FORMAT
   TIME_TO_SEC
   TO_DAYS
   UNIX_TIMESTAMP
   UTC_DATE
   UTC_TIME
   UTC_TIMESTAMP
   WEEK
   WEEKDAY
   WEEKOFYEAR
   YEAR
   YEARWEEK

mysql> help MONTH




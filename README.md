<pre name="code" class="html"># SQL 快速学习
Sams Teach Yourself SQL I 10 Minutes 4th Edition &nbsp;(中文名： sql 必知必会（4th）)




下载书中源码：
http://forta.com/books/0672336073/TeachYourselfSQL_MySQL.zip
下载后的编码create.txt有点问题，source /root/github/sql/src/create.txt不成功，可用notepad++ 修改编码为utf-8
代码中的TeachYourselfSQL_MySQL.zip是转码后的，可正确运行。




启动mysql 命令行,如果不知道如何运行sql脚本，一条一条的插入create和populate语句即可。
如何执行脚本？ 打开mysql&nbsp;


执行脚本：
mysql&gt; source /root/github/sql/src/create.txt (`要注意，这个是在mysql登录进去的命令行中，而不是直接在linux的命令行下执行!`)

也可以把create.txt 里面的内容复制下来，在Navicat中执行新建查询，然后粘贴sql执行。



更多帮助，可借助help命令：




mysql&gt; help


For information about MySQL products and services, visit:
&nbsp; &nbsp;http://www.mysql.com/
For developer information, including the MySQL Reference Manual, visit:
&nbsp; &nbsp;http://dev.mysql.com/
To buy MySQL Enterprise support, training, or other products, visit:
&nbsp; &nbsp;https://shop.mysql.com/


List of all MySQL commands:
Note that all text commands must be first on line and end with ';'
? &nbsp; &nbsp; &nbsp; &nbsp; (\?) Synonym for `help'.
clear &nbsp; &nbsp; (\c) Clear the current input statement.
connect &nbsp; (\r) Reconnect to the server. Optional arguments are db and host.
delimiter (\d) Set statement delimiter.
edit &nbsp; &nbsp; &nbsp;(\e) Edit command with $EDITOR.
ego &nbsp; &nbsp; &nbsp; (\G) Send command to mysql server, display result vertically.
exit &nbsp; &nbsp; &nbsp;(\q) Exit mysql. Same as quit.
go &nbsp; &nbsp; &nbsp; &nbsp;(\g) Send command to mysql server.
help &nbsp; &nbsp; &nbsp;(\h) Display this help.
nopager &nbsp; (\n) Disable pager, print to stdout.
notee &nbsp; &nbsp; (\t) Don't write into outfile.
pager &nbsp; &nbsp; (\P) Set PAGER [to_pager]. Print the query results via PAGER.
print &nbsp; &nbsp; (\p) Print current command.
prompt &nbsp; &nbsp;(\R) Change your mysql prompt.
quit &nbsp; &nbsp; &nbsp;(\q) Quit mysql.
rehash &nbsp; &nbsp;(\#) Rebuild completion hash.
source &nbsp; &nbsp;(\.) Execute an SQL script file. Takes a file name as an argument.
status &nbsp; &nbsp;(\s) Get status information from the server.
system &nbsp; &nbsp;(\!) Execute a system shell command.
tee &nbsp; &nbsp; &nbsp; (\T) Set outfile [to_outfile]. Append everything into given outfile.
use &nbsp; &nbsp; &nbsp; (\u) Use another database. Takes database name as argument.
charset &nbsp; (\C) Switch to another charset. Might be needed for processing binlog with multi-byte charsets.
warnings &nbsp;(\W) Show warnings after every statement.
nowarning (\w) Don't show warnings after every statement.


For server side help, type 'help contents'




注： 上面的关键字都是mysql命令，比如use &nbsp;test; &nbsp; &nbsp;比如清屏 system clear
如果我们需要查找从字符串中提取时间：'2008-02-03',我们想知道mysql的函数集
进行查找：




mysql&gt; help contents
You asked for help about help category: &quot;Contents&quot;
For more information, type 'help &lt;item&gt;', where &lt;item&gt; is one of the following
categories:
&nbsp; &nbsp;Account Management
&nbsp; &nbsp;Administration
&nbsp; &nbsp;Compound Statements
&nbsp; &nbsp;Data Definition
&nbsp; &nbsp;Data Manipulation
&nbsp; &nbsp;Data Types
&nbsp; &nbsp;Functions
&nbsp; &nbsp;Functions and Modifiers for Use with GROUP BY
&nbsp; &nbsp;Geographic Features
&nbsp; &nbsp;Help Metadata
&nbsp; &nbsp;Language Structure
&nbsp; &nbsp;Plugins
&nbsp; &nbsp;Procedures
&nbsp; &nbsp;Storage Engines
&nbsp; &nbsp;Table Maintenance
&nbsp; &nbsp;Transactions
&nbsp; &nbsp;User-Defined Functions
&nbsp; &nbsp;Utility




mysql&gt; help Date and Time Functions
You asked for help about help category: &quot;Date and Time Functions&quot;
For more information, type 'help &lt;item&gt;', where &lt;item&gt; is one of the following
topics:
&nbsp; &nbsp;...
&nbsp; &nbsp;MICROSECOND
&nbsp; &nbsp;MINUTE
&nbsp; &nbsp;MONTH
&nbsp; &nbsp;MONTHNAME
&nbsp; &nbsp;NOW
&nbsp; &nbsp;PERIOD_ADD
&nbsp; &nbsp;PERIOD_DIFF
&nbsp; &nbsp;QUARTER
&nbsp; &nbsp;SECOND
&nbsp; &nbsp;SEC_TO_TIME
&nbsp; &nbsp;STR_TO_DATE
&nbsp; &nbsp;SUBDATE
&nbsp; &nbsp;SUBTIME
&nbsp; &nbsp;SYSDATE
&nbsp; &nbsp;TIME FUNCTION
&nbsp; &nbsp;TIMEDIFF
&nbsp; &nbsp;TIMESTAMP FUNCTION
&nbsp; &nbsp;TIMESTAMPADD
&nbsp; &nbsp;TIMESTAMPDIFF
&nbsp; &nbsp;TIME_FORMAT
&nbsp; &nbsp;TIME_TO_SEC
&nbsp; &nbsp;TO_DAYS
&nbsp; &nbsp;UNIX_TIMESTAMP
&nbsp; &nbsp;UTC_DATE
&nbsp; &nbsp;UTC_TIME
&nbsp; &nbsp;UTC_TIMESTAMP
&nbsp; &nbsp;WEEK
&nbsp; &nbsp;WEEKDAY
&nbsp; &nbsp;WEEKOFYEAR
&nbsp; &nbsp;YEAR
&nbsp; &nbsp;YEARWEEK


mysql&gt; help MONTH
</pre>

4.如何使用mysql自动补全命令
  使用mycli工具即可

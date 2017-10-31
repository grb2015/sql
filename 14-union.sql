--- union 将多条select语句组合成一个结果集

--- 例子： 现需要查询llinois、Indiana、和Michigan等美国几个州的所有顾客的名字，         
---还想知道不管位于哪个州的所有Fun4ALL顾客的名字。


--- 用之前学过的可以实现
    select cust_contact from Customers where cust_state IN('MI','IN','IL') OR cust_name = 'Fun4All';
--- 也可以用union实现
select cust_contact from Customers where cust_state IN('MI','IN','IL') union select cust_name from Customers where cust_name = 'Fun4All';

--从上面的比较可知，union其实就是将两个select语句连在一起而已，而且语句更长，还没有我们之前学过的好。但是在某些情况下，它很有用,它使处理更简单





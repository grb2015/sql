--- 本章开始在多个表中查找,用到子查询，即一个select的结果作为另一个select的条件

--- 1.  求订购了RGAN01这种商品的所有顾客。
	---用我们学过的知识，得分两步
	---第一步，在OrderIterms表中求出购买了RGAN01的订单号
	select order_num from OrderItems where prod_id='RGAN01';
	---第二步，根据上面的订单号再在Orders表中求出对应的cust_id
	select cust_id from Orders where (order_num='20007' or order_num='20008');

	--- 可以把两句合成一句,即第一步的结果作为第二步的条件
	select cust_id from Orders where order_num IN (select order_num from OrderItems where prod_id = 'RGAN01');


---2.  求Customers表中每个客户的订单总数.需要注意的是，直接在orders表中根据cust_id来统计不正确，因为可以Customers中的顾客只是orders表中cust_id的一部分。一个子集而已

    --- select cust_id ,count(*) from Orders group by cust_id;  ---所以这个是不完全正确的。
    
	---我们可以一个一个的求，比如,数据量很大时跪！
	select count(*) from Orders where Orders.cust_id = '1000000001';
	--- 当然，我们一起求啊，
	select count(*) from Orders where Orders.cust_id = Customers.cust_id ;
		---但是这个出错了!ERROR 1054 (42S22): Unknown column 'Customers.cust_id' in 'where clause'
		--- 我理解这个cust_id是多少呢?数据库它并不知道。所以我们还需要一个select cust_id from Customers来得到一个cust_id的list
	---最终正确的. 这个不是很好的做法，更容易理解的见后面的join用法
	select cust_name ,(select count(*) from Orders where Orders.cust_id = Customers.cust_id) from Customers;





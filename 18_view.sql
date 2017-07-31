--- 在第12课使用连接来实现了: 求订购了RGAN01的所有顾客id 
select cust_id from Orders ,OrderItems  where  Orders.order_num=OrderItems.order_num and OrderItems.prod_id = 'RGAN01';


--- 本课学习视图，它将简化查询。
--- 它是一个查询，并不包含具体的表的数据，也叫虚表

--- 它返回的是订购了任意产品的顾客。
create view ProductCustomers as   select cust_id from Orders ,OrderItems  where  Orders.order_num=OrderItems.order_num

---查找购买了RGAN01的顾客id
select cust_id from  ProductCustomers where prod_id = 'RGAN01';

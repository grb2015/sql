-- 小写转大写函数 UPPER
select vend_name ,UPPER(vend_name) as vend_name_upcase from Vendors;
--查找2012年的所有订单,year也可以
select order_num from Orders where YEAR(order_date)=2012;

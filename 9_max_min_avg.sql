-- 求平均数	 求Products表中所有商品的平均价格
select AVG(prod_price) as avg_price from Products;

--统计所有顾客数(即统计一共有多少行)	求Customers表中顾客数
select count(*) as num_cust from Customers;

--	只统计有邮件的顾客数
select count(cust_email)as n_email_cust from Customers;

-- 求最贵的商品价格
select max(prod_price) as max_price from Products;
select min(prod_price) as min_price from Products;

--求订单20005所有购买的商品数
select sum(quantity)as item_ordered from OrderItems where order_num= 20005;
  -- 注意下面这个,它实际上求的是订单20005中买了几种商品
select count(*) from OrderItems where order_num=20005;


--聚集不同值 求供货商DLL01供应的商品价格的平均值(同样的价格的只算一次)
select AVG(DISTINCT prod_price) as avg_price from Products where vend_id='DLL01';


-- 组合聚集 求所有的商品数，最大商品价格，最小商品价格，平均价格
select count(*),min(prod_price),max(prod_price),avg(prod_price) from Products;
-- 在上面的语句中，重点关注一下 select count(*) from Products; 这个是求所有的行数,也就是所有的商品数!



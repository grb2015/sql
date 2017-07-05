-- 求平均数
select AVG(prod_price) as avg_price from Products;

--统计所有顾客数(求行数的和)
select count(*) as num_cust from Customers;
--	只统计有邮件的顾客数
select count(cust_email)as num_cust1 from Customers;

-- 求最贵的商品价格
select max(prod_price) as max_price from Products;
select min(prod_price) as min_price from Products;

--求订单20005所有购买的商品数
select sum(quantity)as item_ordered from OrderItems where order_num= 20005;


--聚集不同值 求所有价格不同商品的平均值
select AVG(DISTINCT prod_price) as avg_price from Products where vend_id='DLL01';


-- 组合聚集 求所有的商品数，最大商品价格，最小商品价格，平均价格:w
select count(*),min(prod_price),max(prod_price),min(prod_price),avg(prod_price) from Products;



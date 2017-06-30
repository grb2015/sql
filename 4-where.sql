-- 本章学习过滤数据

-- 3-1
select prod_name,prod_price from Products where prod_price = 3.49;


-- 3-2 

-- 1. 小于
select prod_name,prod_price from Products where prod_price<10;

-- 2. 不等于
select prod_id ,vend_id from Products where vend_id <> 'DLL01';
select prod_id ,vend_id from Products where vend_id != 'DLL01';

-- 3. between and 
 select prod_id,prod_price from Products where prod_price between 5 and 10;

-- 4. is null		(这里是从customers表中查)
select cust_id,cust_email from Customers where cust_email IS NULL;







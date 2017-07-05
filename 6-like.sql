-- 本章学习通配符的使用

--6-1
-- 寻找所有以 'FISH'开头的产品
select prod_name from Products where prod_name like 'FISH%';

-- 寻找中间字段为'bean bag'的
select prod_name from Products where prod_name like '%bean bag %';


--6-1-2  _通配符只匹配一个字符
select prod_id ,prod_name from Products where prod_name like '_ inch teddy bear';

--6-1-3  []匹配，相当于[J%]和[M%]  mysql好像不支持
select cust_contact from Customers where cust_contact like '[JM]%';

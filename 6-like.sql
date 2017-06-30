-- 本章学习通配符的使用

--6-1
-- 寻找所有以 'FISH'开头的产品
select prod_name from Products where prod_name like 'FISH%';

-- 寻找中间字段为'bean bag'的
select prod_name from Products where prod_name like '%bean bag %';


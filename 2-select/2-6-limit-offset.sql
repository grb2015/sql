
-- 检索前5行
select prod_name from Products LIMIT 5;


-- 检索从第6行开始的连续4行
select prod_name from Products LIMIT 4 OFFSET 5;
--或简写为：
select prod_name from Products LIMIT 4,5;

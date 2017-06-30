-- 3-1排序数据
select prod_name from Products order by prod_name;

-- 3-2  按多个列排序. 查找所有的商品Id,商品价格，商品名称。并按照价格排序，价格相同时，按名字排序。
select prod_id,prod_price,prod_name from Products  order by prod_price,prod_name

-- 3-3 3-2中也可以用数字代替(这里的数学是select中的位置),不建议这个做。意义不明确，可读性不好
select prod_id,prod_price ,prod_name  from Products order by 2 ,3;

-- 3-4 降序排序(默认是升序),单列
select prod_id,prod_price ,prod_name  from Products order by prod_price DESC;

-- 3-4 降序排序(默认是升序),多列(每列都要加上关键字)
select prod_id,prod_price ,prod_name  from Products order by prod_price DESC, prod_name DESC;





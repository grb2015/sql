--7-2  拼接字符串 (mysql 不支持)
select vend_name+'('+vend_country+')' from Vendors;
或
select vend_name||'('||vend_country||')' from Vendors;

--7-2 别名，将上述查询结果保存为vend_title名 as 。
select vend_name+'('+vend_country+')' AS vend_titile from Vendors;


--7-3 别名
select prod_id ,quantity,item_price ,quantity*item_price as total_price from OrderItems where order_num = 20008;


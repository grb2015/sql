--这一章学习聚集
--要注意having 和 where 的区别，having是在数据分组后过虑，而where是在前

-- 求各供应商供应的商品种类数 ，将Prodects以vend_id聚集
select count(*) from Products group by vend_id;
select vend_id,count(*) from Products group by vend_id;

--Order表中求有两个及以上的订单的客户(having),将Orders以cust_id聚集
 select cust_id from Orders group by cust_id having count(*)>=2;






--- 创建 、删除、重命名表

---创建表 ，可以指定默认值
CREATE TABLE Products2
(
  prod_id    char(10)      NOT NULL ,
  vend_id    char(10)      NOT NULL ,
  prod_name  char(255)     NOT NULL ,
  prod_price decimal(8,2)  NOT NULL default 1.00,
  prod_desc  text          NULL 
);

--- 删除表
drop table Customers;
---重命名表

rename table CustCopy to Customers;

//rbguo added 20180515
复制表：
1、原表存在的话这样用：insert into a select * from b
2、原表不存在的话这样用：select * into a from b

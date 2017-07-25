--- 数据库的增删查改，我们之前一直在学习'查'，现在来学习'增'


---请在customers表中增加一行数据,有新的顾客来了!但是它没有提供cust_country,cust_contact和cust_email项

insert into Customers(cust_id ,cust_name,cust_address,   cust_city,     cust_state,cust_zip)
            values('1000000006',       'Toy Land','123 Any Steet','New York',  'NY',       '11111');


--- 插入检索出的数据  --现需要将另一表CustNew中的顾客合并到customers中.
insert into Customers(cust_id,cust_city,cust_name,cust_state,cust_address,cust_email,cust_contact) select (cust_id,cust_city,cust_name,cust_state,cust_address,cust_email,cust_contact)from CustNew;

--- 复制表  请复制Customers表，命名为CustCopy

select * into CustCopy from Customers;
--mysql中使用
create table CustCopy as select * from Customers;

--- 如果只想复制部分列，可以明确给出列名
select cust_city,cust_contact,cust_id into CustCopy from Customers;
create table CustCopy_2  as select cust_city,cust_contact,cust_id from Customers;








--- 修改表中的数据。删除/增加表中的某一行/列

--- update:  给100000005增加电子邮件
    update Customers  set cust_email='kim@thetoystore.com'where cust_id = '1000000005';
    ---        取消给100000005增加电子邮件
    update Customers  set cust_email=NULL where cust_id = '1000000005';

---delete  删除100000006这一行
    delete from Customers where cust_id = '1000000006';
    
    --rbguo added 20180513
    1.清空表中数据 
    delete from `12_company_info` where 1; --这里的1表示true.
    2.如果要删除指定的行号的某行，mysql由于无法直接得到行号，所以还不太好操作

--- 增加一列

create table vendors_copy as select * from Vendors;
alter table vendors_copy add vend_phone char(20);

---删除一列
alter table vendors_copy drop column vend_phone;




guo added 21091009:
补充1：
要设置某一列的值为1,
UPDATE `jcimate_alarm_rules`.`tbl_attribute` SET `complex_operate_id`='1'  
需要注意的是,Mysql中必须跟一个where条件，不然会说不安全而报错，要取消报错可以运行下面的：
SET SQL_SAFE_UPDATES=0;

--


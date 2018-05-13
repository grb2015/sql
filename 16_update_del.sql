--- 修改表中的数据。删除/增加表中的某一行/列

--- update:  给100000005增加电子邮件
    update Customers  set cust_email='kim@thetoystore.com'where cust_id = '1000000005';
    ---        取消给100000005增加电子邮件
    update Customers  set cust_email=NULL where cust_id = '1000000005';

---delete  删除100000006这一行
    delete from Customers where cust_id = '1000000006';
    
    --rbguo added 20180513
    清空表中数据 
    delete from `12_company_info` where 1; --这里的1表示true.

--- 增加一列

create table vendors_copy as select * from Vendors;
alter table vendors_copy add vend_phone char(20);

---删除一列
alter table vendors_copy drop column vend_phone;





--


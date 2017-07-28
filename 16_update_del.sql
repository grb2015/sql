--- 修改表中的数据。删除表中的某一行

--- update:  给100000005增加电子邮件
    update Customers  set cust_email='kim@thetoystore.com'where cust_id = '1000000005';
    ---        取消给100000005增加电子邮件
    update Customers  set cust_email=NULL where cust_id = '1000000005';
---delete  删除100000006这一行
    delete from Customers where cust_id = '1000000006';






--


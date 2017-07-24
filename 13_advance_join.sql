--- 本章学习其它的连接方式(上一节学习的连接其实称内连接),还学习在连接中使用聚集函数

--- 在第7节中使用列别名，我们也可以使用表别名(可以缩短sql语句)
    --- 用上一课的例子，求订购了RGAN01这种商品的所有顾客
select cust_id from Orders as O,OrderItems as OI  where  O.order_num=OI.order_num and OI.prod_id = 'RGAN01';


--- 1.自连接
    --- 问题，要给Jim Jones同一公司的所有顾客发送一封邮件


    --- 注意，这里的 FUN4ALL 应该是公司的名字，而对于的Jim Jones　和 Denise L 才是真正的购物者
---   mysql> select * from Customers;

--    +------------+---------------+----------------------+-----------+------------+----------+--------------+--------------------+-----------------------+
--    | cust_id    | cust_name     | cust_address         | cust_city | cust_state | cust_zip | cust_country | cust_contact       | cust_email            |
--    +------------+---------------+----------------------+-----------+------------+----------+--------------+--------------------+-----------------------+
--    | 1000000001 | Village Toys  | 200 Maple Lane       | Detroit   | MI         | 44444    | USA          | John Smith         | sales@villagetoys.com |
--    | 1000000002 | Kids Place    | 333 South Lake Drive | Columbus  | OH         | 43333    | USA          | Michelle Green     | NULL                  |
--    | 1000000003 | Fun4All       | 1 Sunny Place        | Muncie    | IN         | 42222    | USA          | Jim Jones          | jjones@fun4all.com    |
--    | 1000000004 | Fun4All       | 829 Riverside Drive  | Phoenix   | AZ         | 88888    | USA          | Denise L. Stephens | dstephens@fun4all.com |
--    | 1000000005 | The Toy Store | 4545 53rd Street     | Chicago   | IL         | 54545    | USA          | Kim Howard         | NULL                  |
--    +------------+---------------+----------------------+-----------+------------+----------+--------------+--------------------+-----------------------+


    --- 用前面学过的子查询的方法可以实现
    select cust_name from Customers where cust_name = (select cust_name from Customers where cust_contact = 'Jim Jones');

    --- 使用本节的子连接的方法,它实际上跟上一节的连接差不多。只不过是在一张表中了。但是你把它看做两张表即可。
     select Customers.cust_name  from Customers where Customers.cust_name = Customers.cust_name and Customers.cust_contact ='Jim Jones';


    --- 2. 外连接
    ---  检索custoerms表中所有顾客及其订单,

    -- 内连接(检索结果不正确，为空的检索不出来)
    select Customers.cust_id ,Orders.order_num from Customers,Orders where Orders.cust_id=Customers.cust_id;
            ---交互‘=’两边的值也没有效果
    select Customers.cust_id ,Orders.order_num from Customers,Orders where Customers.cust_id = Orders.cust_id;

    --- 外左连接(结果正确!他是以custoerms表为标准)
    select Customers.cust_id ,Orders.order_num from Customers LEFT OUTER JOIN Orders ON  Orders.cust_id=Customers.cust_id;

    --- 外右连接(检索结果不正确，为空的检索不出来,因为它是以右边的Order为标准
    select Customers.cust_id ,Orders.order_num from Customers RIGHT  OUTER JOIN Orders ON  Orders.cust_id=Customers.cust_id;

     ---3.全连接
        --- 全连接相当于left和right的总和(mysql不支持)
         select Customers.cust_id ,Orders.order_num from Customers FULL OUTER JOIN Orders ON  Orders.cust_id=Customers.cust_id;


        --- 4.连接与聚集函数的结合
            --- 要检索所有每个顾客下的订单数

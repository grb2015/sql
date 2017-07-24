---上一节中用子查询
    --- 1.求订购了RGAN01这种商品的所有顾客
    --- 2.求Customers表中每个客户的订单总数和

   ---实现得比较不方便，这里使用联结

    --- 1. 上一节的子查询实现   
            select cust_id from Orders where order_num IN (select order_num from OrderItems where prod_id = 'RGAN01');

    ---    本节的连接实现  
                                                     ---　我理解，这里的order_num就是连接的字段    ---然后OrderIterms表中的prod_id就是在另一侧的表中进行筛选
            select cust_id from Orders ,OrderItems  where  Orders.order_num=OrderItems.order_num and OrderItems.prod_id = 'RGAN01';

    --- 2. 上一节的子查询实现   
            select cust_name ,(select count(*) from Orders where Orders.cust_id = Customers.cust_id) from Customers;
    ---    本节的连接实现  
                --这个还不怎么好弄!留给以后



---------------------------------------------------------------------------------------------------
--- 本节学习联结
   

---example1 打印出Products表中每件商品的供应商的名字，每件商品的名字、价格
select vend_name,prod_name,prod_price from Vendors,Products where Vendors.vend_id = Products.vend_id;

---example 2  
        --- 1.显示订单20007中的所有物品及其价格 (这里的20007写成'20007'也可以,select中的prod_id要加限定)
    select prod_name,prod_price,Products.prod_id from Products,OrderItems where Products.prod_id = OrderItems.prod_id  and order_num=20007;

        --- 2.显示订单20007中的所有物品、价格及其供货商名
    select prod_name,prod_price ,  Vendors.vend_name from Products,OrderItems,Vendors  where Products.prod_id = OrderItems.prod_id  and order_num=20007 and Vendors.vend_id=Products.vend_id;


    



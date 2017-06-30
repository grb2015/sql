-- 高级筛选，引入逻辑与或非

-- 5-1   and or

--and 
select prod_id,prod_name  from Products where vend_id = 'DLL01'
       and prod_price<=4;

-- or
elect prod_id ,prod_name from Products where vend_id = 'DLL01' or vend_id = 'BRS01';

-- and or 
select prod_id ,prod_name,prod_price  from Products where (vend_id = 'DLL01' or vend_id = 'BRS01' ) and prod_price > 10;



-- 5-2  IN
select prod_id ,vend_id from Products where vend_id in ('DLL01', 'BRS01');


-- 5-3 NOT 
select prod_id ,vend_id from Products where NOT vend_id = 'DLL01';

-- 相当于
select prod_id ,vend_id from Products where vend_id != 'DLL01';






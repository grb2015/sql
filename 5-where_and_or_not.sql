-- 高级筛选，引入逻辑与或非

-- 5-1   and or

--and 	查找所有供货商为DLL01的,并且价格低于4美元的产品
select prod_id,prod_name  from Products where vend_id = 'DLL01'
       and prod_price<=4;

-- or	查找所有供货商DLL01和BRS01供应的商品
elect prod_id ,prod_name from Products where vend_id = 'DLL01' or vend_id = 'BRS01';

-- and or查找所有供货商DLL01和BRS01供应的,并且价格高于10美元的商品 	
select prod_id ,prod_name,prod_price  from Products where (vend_id = 'DLL01' or vend_id = 'BRS01' ) and prod_price > 10;



-- 5-2  IN	查找所有供货商DLL01和BRS01供应的商品
select prod_id ,vend_id from Products where vend_id in ('DLL01', 'BRS01');


-- 5-3 NOT 	查找除了供货商DLL01供应的商品外所有其他的商品
select prod_id ,vend_id from Products where NOT vend_id = 'DLL01';

-- 相当于	
select prod_id ,vend_id from Products where vend_id != 'DLL01';






--存储过程。它就相当于编程中的函数，它可以有变化和if,else,case等。
--- 例子参考的是http://www.cnblogs.com/chenpi/p/5136483.html
--- 没有用书本的。

--实例1 : 创建存储过程(函数)，计算两个数的和

-- ----------------------------
-- Procedure structure for `proc_adder`
-- ----------------------------
DROP PROCEDURE IF EXISTS 'proc_adder';
DELIMITER ;;
CREATE PROCEDURE 'proc_adder'(IN a int, IN b int, OUT sum int)
BEGIN
		     --- Routine body goes here...

		    DECLARE c int;
		    if a is null then set a = 0; 
				    end if;
				  
				    if b is null then set b = 0;
						    end if;

						    set sum  = a + b;
				END
				;;
				DELIMITER ;


--- 调用set @b=5
--- call proc_adder(2,@b,@num)
--- @num

# View more python learning tutorial on my Youtube and Youku channel!!!

# Youtube video tutorial: https://www.youtube.com/channel/UCdyjiB5H8Pu7aDTNVXTTpcg
# Youku video tutorial: http://i.youku.com/pythontutorial

#import tkinter as tk
import tkinter as tk
import pymysql
def excute_sql(sql_string):
	db = pymysql.connect("localhost","root","password","test" )
	cursor = db.cursor()
	try:
	   # 执行SQL语句
	   print("#######sql_string = ",sql_string)
	   cursor.execute(sql_string)

	   # 获取所有记录列表
	   results = cursor.fetchall()
	   #print("### type(result) = ",type(results))
	except:
	   print ("Error: unable to fetch data")
	   results = "except!"
	   pass
	# 关闭数据库连接
	db.close()
	return results
def excute_sql_del_insert(sql_string):
	db = pymysql.connect("localhost","root","password","test" )
	cursor = db.cursor()
	try:
	   # 执行SQL语句
	   print("#######sql_string = ",sql_string)
	   cursor.execute(sql_string)
	   db.commit()
	   results = "ok!"
	except:
	   results = "except!"
	   pass
	# 关闭数据库连接
	db.close()
	return results
window = tk.Tk()
window.title("Perter's store manager system")
window.geometry('200x200')
def show_itmes(iterms):
	t.insert('end', '--------------------------------------------\n\n')
	show_columns("customers")
	for iterm in iterms:
		t.insert('end', iterm)		## rbguo added end代表在文件框的末尾输入e的值(而e来自于输入框)
		t.insert('end', '\n\n')
def select_table(table_name):
	sql_str = "SELECT * FROM %s" %(table_name)
	iterms = excute_sql(sql_str)
	show_itmes(iterms)
## 需要注意的是,如果要删除的有外键，则无法删除，比如"DELETE from Customers where cust_id = '1000000001'"就无法删除，但是0002可以0006也可以
def delete_table(table_name):
	#insert_string = "DELETE from Customers where cust_id = '1000000001'"
	del_string = "DELETE FROM %s WHERE cust_id = '%d'" % (table_name,1000000006)
	print("######## [delete_table] insert_string =",del_string)
	iterms = excute_sql_del_insert(del_string)
	#print("### insert_table: itmers = ",iterms)
	select_table(table_name)
def insert_table(table_name):
	insert_string = "insert into Customers(cust_id ,cust_name,cust_address,   cust_city,     cust_state,cust_zip)\
            values('1000000006',       'Toy Land','123 Any Steet','New York',  'NY',       '11111')"
	print("######## [insert_string] insert_string =",insert_string)
	iterms = excute_sql_del_insert(insert_string)
	select_table(table_name)
def show_columns(table_name):
	'''获取列名'''
	sql_str = "show columns from %s"%(table_name)
	iterms = excute_sql(sql_str)
	columns = []
	for iterm in iterms:
		columns.append(iterm[0])
	t.insert('end', columns)
	t.insert('end', '\n\n')		
def clean_screen():
	t.delete(0.0, tk.END)	

'''
b1 = tk.Button(window, text='查看顾客信息33',width=15,height=2,
               command=lambda: select_table(table_name ="vendors"))
'''
b1 = tk.Button(window, text='查看顾客信息',
               command=lambda: select_table(table_name ="customers"))
b2 = tk.Button(window, text='查看供应商信息',
               command=lambda: select_table(table_name ="vendors"))
b3 = tk.Button(window, text='查看订单信息',
               command=lambda: select_table(table_name ="orders"))
b4 = tk.Button(window, text='查看产品信息',
               command=lambda: select_table(table_name ="products"))
b5 = tk.Button(window, text='查看订单详情信息',
               command=lambda: select_table(table_name ="orderitems"))
b6 = tk.Button(window, text='清除屏幕',
               command=clean_screen,bg = "red")
b21 = tk.Button(window, text='删除顾客信息',
               command=lambda: delete_table(table_name ="customers"))
b31 = tk.Button(window, text='增加顾客信息',
               command=lambda: insert_table(table_name ="customers"))
b1.place(x=0, y=0)
b2.place(x=200, y=0)
b3.place(x=400, y=0)
b4.place(x=800, y=0)
b5.pack()	## 这里必须加一个自动设置位置的
b6.place(x=1000, y=0)

b21.pack(side = tk.LEFT)
b31.pack(side = tk.LEFT)
'''
b1.pack()
b1.pack(side = tk.LEFT)
'''
#def add_table_item(table_name):

t = tk.Text(window ,width=150,height=70)
t.place(x=200, y=30)
t.pack()
window.mainloop()


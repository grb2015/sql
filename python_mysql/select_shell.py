# View more python learning tutorial on my Youtube and Youku channel!!!

# Youtube video tutorial: https://www.youtube.com/channel/UCdyjiB5H8Pu7aDTNVXTTpcg
# Youku video tutorial: http://i.youku.com/pythontutorial

#import tkinter as tk
import tkinter as tk
import pymysql
def sql_select(sql_string):
	db = pymysql.connect("localhost","root","password","test" )
	cursor = db.cursor()
	try:
	   # 执行SQL语句
	   cursor.execute(sql_string)
	   # 获取所有记录列表
	   results = cursor.fetchall()
	   #print("### type(result) = ",type(results))
	except:
	   print ("Error: unable to fetch data")
	 
	# 关闭数据库连接
	db.close()
	return results

window = tk.Tk()
window.title('my window')
window.geometry('200x200')
# e = tk.Entry(window, show="*")
#e = tk.Entry(window, show="1")
#e.pack()

def show_customers():
	sql_str = "SELECT * FROM customers" 
	iterms = sql_select(sql_str)
	t.insert('end', '--------------------------------------------\n\n')
	show_columns("customers")
	for iterm in iterms:
		t.insert('end', iterm)		## rbguo added end代表在文件框的末尾输入e的值(而e来自于输入框)
		t.insert('end', '\n\n')	
    #t.insert(2.2, var)
def show_table(table_name):
	sql_str = "SELECT * FROM %s" %(table_name)
	iterms = sql_select(sql_str)
	t.insert('end', '--------------------------------------------\n\n')
	show_columns("vendors")
	for iterm in iterms:
		t.insert('end', iterm)		## rbguo added end代表在文件框的末尾输入e的值(而e来自于输入框)
		t.insert('end', '\n\n')	
def show_columns(table_name):
	'''获取列名'''
	sql_str = "show columns from %s"%(table_name)
	iterms = sql_select(sql_str)
	columns = []
	for iterm in iterms:
		columns.append(iterm[0])
	t.insert('end', columns)
	t.insert('end', '\n\n')		
def clean_screen():
	t.delete(0.0, tk.END)	
'''
b1 = tk.Button(window, text='查看顾客信息33',width=15,height=2,
               command=lambda: show_table(table_name ="vendors"))
'''
b1 = tk.Button(window, text='查看顾客信息',
               command=lambda: show_table(table_name ="vendors"))

b2 = tk.Button(window, text='查看供应商信息',
               command=lambda: show_table(table_name ="customers"))

b3 = tk.Button(window, text='查看订单信息',
               command=lambda: show_table(table_name ="orders"))

b4 = tk.Button(window, text='查看产品信息',
               command=lambda: show_table(table_name ="products"))

b5 = tk.Button(window, text='查看订单详情信息',
               command=lambda: show_table(table_name ="orderitems"))

b6 = tk.Button(window, text='清除屏幕',
               command=clean_screen,bg = "red")
b1.place(x=0, y=0)
b2.place(x=200, y=0)
b3.place(x=400, y=0)
b4.place(x=800, y=0)
b5.pack()
b6.place(x=1000, y=0)
#b5.place(x=150, y=0)
'''
b1.pack()
b2.pack()
b3.pack()
b4.pack()
b5.pack()

b1.pack(side = tk.LEFT)
b2.pack(side = tk.LEFT)
b3.pack(side = tk.TOP)
b4.pack(side = tk.TOP)
b5.pack(side = tk.TOP)
'''
t = tk.Text(window ,width=150,height=70)
t.place(x=200, y=30)
t.pack()

window.mainloop()


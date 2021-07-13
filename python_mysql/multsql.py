
# _*_ coding:utf-8 _*_
 
import os
import pymysql
import time
 
 
def get_sql_files():  # 从文件夹中批量读取sql文件，返回sql文件
    sql_files = []
    # files = os.listdir(os.path.dirname(os.path.abspath(__file__)))
    files = os.listdir("C:/git_code/task_record/sany_cloud_db/dumps/")
    for file in files:
        if os.path.splitext(file)[1] == '.sql':
            sql_files.append(file)
 
    return sql_files
 
 
def execute_fromfile(conn,filename, cursor):  # 封装一个读取sql文件中的sql语句，并执行语句的方法
    fd = open(filename, 'r', encoding='utf-8')  # 以只读的方式打开sql文件
    sqlfile = fd.read()  # 读取文件内容
    fd.close()
    sqlcommamds = sqlfile.split(';')  # 以;切割文件内容，获取单个sql语句
    print("filename = ",filename)
    for command in sqlcommamds:
        if command == '\n':     # 异常情况处理
            continue
        try:
            # print("command = ",command)
            cursor.execute(command)
            # cur = cursor.execute(command)  # 执行每个sql语句
            # print('sql执行成功:', cur)
        except Exception as msg:
            pass
            # print("错误信息： ", msg)
        # time.sleep(0.2)
    conn.commit()
    print('sql执行完成,暂停1s')
    time.sleep(1)
 
 
def connect_mysql():  # 创建数据路连接，调用读sql文件和执行sql语句方法，达到批量执行sql文件的目的
    # 建立连接
    conn = pymysql.connect(host='47.118.50.83', port=3306, user='root', password='password', db='sanydb')
    print("连接数据库成功")
    # 获取游标对象
    cursor = conn.cursor()
    # 执行sql语句-查询
    # count = cursor.execute("INSERT INTO `sanydb_beng_song_alg_status_table_map` (`id`,`param_name`,`device_type`,`alg_table_name`,`del_flag`,`create_time`,`update_time`) VALUES (1,'high_pressure_or_jam','bc','sanydb_beng_song_press_data_daily',0,'2021-07-09 08:47:32','2021-07-09 09:05:25')")
    # count = cursor.execute("select * from tebl_acct_bs_sgmt")
    # print(count)
    conn.commit()  # 注意这里必须写commit 不然insert语句无法成功
    # 执行sql
    for file in get_sql_files():
        filename = r"C:/git_code/task_record/sany_cloud_db/dumps/" + file
        print("filename = ",filename)
        execute_fromfile(conn,filename, cursor)
 
    # 关闭连接
    conn.close()
 
 
if __name__ == '__main__':
    connect_mysql()
 
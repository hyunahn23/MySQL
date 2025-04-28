# pip install mysql-connector-python

import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="ohgiraffers",
    password="ohgiraffers",
    database="menudb"
)

# menu_code가 100번 이상인 메뉴 삭제
sql = "DELETE FROM tbl_menu WHERE menu_code > %s"
values = (99,)

cursor = connection.cursor()
cursor.execute(sql, values)
connection.commit()

print(f'{cursor.rowcount}개의 행을 삭제하였습니다.')

cursor.close()
connection.close()

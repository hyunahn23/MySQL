# pip install mysql-connector-python

import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="ohgiraffers",
    password="ohgiraffers",
    database="menudb"
)

cursor = connection.cursor()

cursor.execute("SELECT menu_code, menu_name, menu_price FROM tbl_menu")
result = cursor.fetchall()

for row in result:  # row = 한 행의 결과
    print('menucode:', row[0], '/', 'menuname:', row[1], '/', 'menuprice:', row[2])

# print(result)

cursor.close()
connection.close()

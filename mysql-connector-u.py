# pip install mysql-connector-python

import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="ohgiraffers",
    password="ohgiraffers",
    database="menudb"
)

# 1번 메뉴를 여러분의 점심 메뉴로 메뉴명과 가격을 수정
sql = "UPDATE tbl_menu SET menu_name = %s, menu_price = %s WHERE menu_code = 1"
values = ("제육볶음", 10000)

cursor = connection.cursor()
cursor.execute(sql, values)
connection.commit()

print(f'{cursor.rowcount}개의 행이 업데이트 되었습니다.')

cursor.close()
connection.close()

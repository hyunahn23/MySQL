# DML

SELECT menu_code, menu_name, menu_price, category_code, orderable_status
  FROM tbl_menu;


# INSERT
-- INSERT INTO 테이블명 VALUES (컬럼순으로, 삽입할, 데이터, 나열, ...)
INSERT INTO tbl_menu VALUES (null, '곰탕', 9500, 6, 'Y');

-- INSERT INTO 테이블명 (컬럼명1, 컬럼명2, 컬럼명3, ...)
-- VALUES (데이터1, 데이터2, 데이터3, ...)
INSERT INTO tbl_menu(menu_code, menu_name, menu_price, orderable_status, category_code)
VALUES (null, '차돌짬뽕', 15000, 'Y', 6);


INSERT INTO tbl_menu(menu_name, menu_price, category_code, orderable_status)
VALUES ('만잔라떼', 4500, 7, 'Y');


-- MULTI INSERT
INSERT INTO tbl_menu
VALUES 
(null, '유자민트티', 6900, 7, 'Y'),
(null, '프렌치프라이', 7500, 7, 'Y'),
(null, '훈제오리샐러드', 9500, 7, 'Y');


-- INSERT INTO tbl_menu VALUES (null, '1번 음식', 100, 10, 'Y');


# UPDATE
-- UPDATE 테이블명
--    SET 컬럼명1 = 수정할 데이터,
--        컬럼명2 = 수정할 데이터,
--        ...
-- [ WHERE 수정 대상 데이터 조건 ];


UPDATE tbl_menu
   SET menu_name = '100번이었던 음식'
       , menu_price = 19000
 WHERE menu_code = 100;  -- SAFE UPDATE MODE가 설정되어 있으면 WHERE절 없이 수정 불가
 
 
# DELETE
-- DELETE FROM 테이블명 [ WHERE 삭제 조건 ];

DELETE
  FROM tbl_menu
 WHERE menu_code = 101;
 

DELETE 
  FROM tbl_menu
ORDER BY menu_code DESC
LIMIT 3;


DELETE 
  FROM tbl_menu
 WHERE menu_code = 26;
 
 
 
# REPLACE
-- REPLACE는 중복값에 대해서는 데이터를 덮어쓰고, 중복값이 없다면 INSERT함
-- INTO 키워드는 생략 가능
REPLACE INTO tbl_menu VALUES (100, '100번 음식 REPLACE!!!!', 100, 10, 'Y');
REPLACE tbl_menu VALUES (120, '없는 메뉴 REPLACE', 11111, 8, 'Y');
# SELECT FROM

-- 단일 컬럼 조회
SELECT menu_name 
  FROM tbl_menu;

-- 다중 컬럼 조회
SELECT menu_code, menu_name, menu_price, category_code, orderable_status
  FROM tbl_menu;

-- 전체 컬럼 조회
SELECT *
  FROM tbl_menu;

-- 연산자 사용 가능
SELECT 12 + 17; -- FROM DUAL(Oracle)
SELECT 12 - 17;
SELECT 12 * 17;
SELECT 12 / 17;
SELECT 12 % 17;


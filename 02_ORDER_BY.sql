# ORDER BY

-- 오름차순 정렬 (ASC 명시하지 않아도 기본 정렬 방식)
SELECT menu_code, menu_name, menu_price
  FROM tbl_menu
ORDER BY menu_name ASC;

-- 내림차순 정렬 (DESC를 명시적으로 작성해야 내림차순 정렬됨)
SELECT menu_code, menu_name, menu_price
  FROM tbl_menu
ORDER BY menu_name DESC;

-- 다중 조건 정렬 가능
SELECT menu_code, menu_name, menu_price
  FROM tbl_menu
ORDER BY menu_price, menu_name;

-- 컬럼의 연산 결과로 정렬 가능
SELECT menu_code, menu_name, menu_price, menu_code * menu_price
  FROM tbl_menu
ORDER BY menu_code * menu_price;

-- 별칭을 사용한 정렬 가능
SELECT menu_code, menu_name, menu_price, menu_code * menu_price as `연산결과`
  FROM tbl_menu
ORDER BY `연산결과`;

-- 오름차순(ASC) 정렬 시 NULL이 맨처음 (default)
-- IS NULL을 붙이면 오름차순(ASC) 정렬 시 NULL을 맨끝으로 (IS NULL ASC): ASC 생략 가능
SELECT category_code, category_name, ref_category_code
  FROM tbl_category
ORDER BY ref_category_code IS NULL;

-- 내림차순(DESC) 정렬 시 NULL이 맨끝 (default)
-- IS NULL을 붙이면 내림차순(DESC) 정렬 시 NULL을 맨처음으로 (IS NULL DESC): DESC 생략 불가
SELECT category_code, category_name, ref_category_code
  FROM tbl_category
ORDER BY ref_category_code IS NULL DESC, ref_category_code DESC;
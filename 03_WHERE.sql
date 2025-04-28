# WHERE

-- 1) 비교 연산자
SELECT menu_name, menu_price, orderable_status
  FROM tbl_menu
 WHERE orderable_status = 'Y';
 
SELECT menu_name, menu_price, orderable_status
FROM tbl_menu
WHERE orderable_status <> 'Y';
  
SELECT menu_name, menu_price, orderable_status
FROM tbl_menu
WHERE menu_price <= 10000;

-- SELECT menu_name, menu_price, orderable_status
--   FROM tbl_menu
-- WHERE 10000 < menu_price <= 20000;

-- 2) AND
SELECT menu_name, menu_price, orderable_status
  FROM tbl_menu
WHERE 10000 < menu_price
AND menu_price <= 20000;

-- 3) OR
SELECT menu_name, menu_price, orderable_status
  FROM tbl_menu
WHERE menu_price > 30000
OR menu_name = '열무김치라떼';

-- 4) BETWEEN
SELECT menu_name, menu_price, orderable_status
  FROM tbl_menu
WHERE menu_price BETWEEN 10000 AND 20000;

SELECT menu_name, menu_price, orderable_status
  FROM tbl_menu
WHERE menu_price NOT BETWEEN 10000 AND 20000;

-- 5) LIKE
SELECT menu_name, menu_price, orderable_status
  FROM tbl_menu
WHERE menu_name LIKE '%김치%';

SELECT menu_name, menu_price, orderable_status
  FROM tbl_menu
WHERE menu_name NOT LIKE '%김치%';

-- 6) IN
SELECT menu_name, menu_price, orderable_status, category_code
  FROM tbl_menu
 WHERE category_code IN (4, 5, 6);
 
 SELECT menu_name, menu_price, orderable_status, category_code
  FROM tbl_menu
 WHERE category_code NOT IN (4, 5, 6);

-- 7) IS NULL
SELECT category_code, category_name, ref_category_code
  FROM tbl_category
 WHERE ref_category_code IS NULL;
 
 SELECT category_code, category_name, ref_category_code
  FROM tbl_category
 WHERE ref_category_code IS NOT NULL;
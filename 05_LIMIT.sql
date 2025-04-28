# LIMIT

SELECT menu_code, menu_name, menu_price
  FROM tbl_menu
ORDER BY menu_price DESC;


-- offset = 2, row count = 5
SELECT menu_code, menu_name, menu_price
  FROM tbl_menu
ORDER BY menu_price DESC
LIMIT 2, 5;


-- row count = 7
SELECT menu_code, menu_name, menu_price
  FROM tbl_menu
ORDER BY menu_price DESC
LIMIT 7;
# DISTINCT
use menudb;

-- 단일 컬럼 DISTINCT
SELECT DISTINCT category_code
  FROM tbl_menu
ORDER BY category_code;

-- NULL 값 포함 단일 컬럼 DISTINCT
SELECT DISTINCT ref_category_code
  FROM tbl_category;
  
-- 다중 컬럼 DISTINCT
SELECT DISTINCT category_code, orderable_status
  FROM tbl_menu
ORDER BY category_code, orderable_status;
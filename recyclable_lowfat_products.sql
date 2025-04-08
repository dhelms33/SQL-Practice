-- =============================================
-- File: recyclable_lowfat_products.sql
-- Description: Write a solution to find the ids of products that are both low fat and recyclable
-- Date: 2025-04-08
-- =============================================

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    low_fats enum,
    recyclable enum

)
--my solution--
SELECT product_id 
FROM products
WHERE low_fats = 'Y' AND recyclable = 'Y'
ORDER BY product_id
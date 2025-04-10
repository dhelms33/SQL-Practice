-- =============================================
-- File: find_customer_referee.sql
-- Description: Find the names of the customer that are not referred by the customer with id = 2
-- Date: 2025-04-08
-- =============================================

CREATE TABLE customer(
    id INT PRIMARY KEY,
    name VARCHAR,
    referee_id INT
)

SELECT name
FROM customer 
WHERE referee_id = 2
ORDER BY referee_id
-- =============================================
-- File: users_neighborhood.sql
-- Description: Creates appropriate tables and SQL query given the neighborhoods and users tables
-- Author: Dereck Helms
-- Date: 2025-04-01
-- =============================================

CREATE TABLE users (
    id SERIAL PRIMARY KEY, --  SERIAL AUTO INCREMENTS--
    name_user VARCHAR(60),
    neighborhood_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE neighborhoods (
    id INT PRIMARY KEY,
    name_neighborhood VARCHAR(60),
    city_id INTEGER,
)

-- write a query that returns all neighborhoods that have 0 users--
SELECT neighborhoods.name_neighborhood, neighborhoods.id --could also use DISTINCT, no repeating--
FROM neighborhoods
WHERE name_neighborhood = ''
LEFT JOIN users 
ON neighborhoods.id = users.neighborhood_id

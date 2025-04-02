-- =============================================
-- File: thirduniquesong.sql
-- Description: Given a table of song_plays and a table of users, write a query to extract the earliest date each user played their third unique song
-- Author: Dereck Helms
-- Date: 2025-04-02
-- =============================================

--left off 9:08--

CREATE TABLE song_plays (
id INTEGER PRIMARY KEY,
created_at DATETIME,
user_id INTEGER,
song_id INTEGER
)

CREATE TABLE users (
id INTEGER PRIMARY KEY,
username VARCHAR(60),
joined_at DATETIME,
age INTEGER
)

--write a cte to preprocess data aka get earliest dat of each song play--

WITH t1 AS(
    SELECT song_id, user_id, min(create_at)
    FROM song_plays
    GROUP BY song_id, user_id
),
--create second to determine the third play--
t2 as (
    SELECT u.username, t1.song_id, created_at,
    row_number() over (partition by u.username order by created_at) rn --row number--
    FROM t1 
    JOIN users u 
    ON t1.user_id = u.id
)

SELECT username, t1.song_id, created_at
FROM t2
WHERE rn = 3
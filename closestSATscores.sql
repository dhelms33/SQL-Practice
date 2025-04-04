-- =============================================
-- File: closestSATscores.sql
-- Description: Create a table of students and their SAT test scores, write a query to return the two students with the closest test scores with the score difference
-- Author: Dereck Helms
-- Date: 2025-04-04
-- =============================================

--left off 9:08--

CREATE TABLE scores(
    id INTEGER PRIMARY KEY,
    student VARCHAR(60),
    score INTEGER

)

-- need to do a self join to compare two students--

-- my version--
SELECT student, id1.score, id2.score
FROM scores
WHERE score1-score2 < score3-score4
SELF JOIN on score

--his version v1--
SELECT 
t1.student as one_student
t2.student as other_student
FROM scores t1
JOIN scores t2
ON 1=1 

--this means where student id == student id--

SELECT 
t1.student as one_student
t2.student as other_student
abs(t1.score-t2.score) as score_diff
FROM scores t1
JOIN scores t2
ON t1.id < t2.id
ORDER BY 3, 1, 2 limit 1 

--GROUP BY  groups rows based on shared column values--
--ORDER BY sorts the result based on specified columns--
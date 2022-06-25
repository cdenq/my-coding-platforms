/*
  1. For data safety, only SELECT statements are allowed
  2. Results have been capped at 100 rows
  3. SQL syntax is based on the latest PostgreSQL
*/

SELECT title
FROM film
ORDER BY length
LIMIT(5);
/*
  1. For data safety, only SELECT statements are allowed
  2. Results have been capped at 100 rows
  3. SQL syntax is based on the latest PostgreSQL
*/

SELECT category
FROM sales_by_film_category
ORDER BY total_sales DESC
LIMIT(3);
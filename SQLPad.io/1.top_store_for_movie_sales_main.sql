/*
  1. For data safety, only SELECT statements are allowed
  2. Results have been capped at 100 rows
  3. SQL syntax is based on the latest PostgreSQL
*/

SELECT store, manager
FROM sales_by_store
WHERE total_sales = (
  SELECT max(total_sales)
  FROM sales_by_store
)
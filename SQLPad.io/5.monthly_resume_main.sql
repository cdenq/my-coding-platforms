/*
  1. For data safety, only SELECT statements are allowed
  2. Results have been capped at 100 rows
  3. SQL syntax is based on the latest PostgreSQL
*/

SELECT 
    EXTRACT(YEAR FROM payment_ts) AS yr,
    EXTRACT(MONTH FROM payment_ts) AS mon,
    SUM(amount) as rev
FROM payment
GROUP BY year, mon
ORDER BY year, mon;
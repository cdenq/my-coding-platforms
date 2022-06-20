/*
  1. For data safety, only SELECT statements are allowed
  2. Results have been capped at 100 rows
  3. SQL syntax is based on the latest PostgreSQL
*/

SELECT
    DATE(payment_ts) as dt,
    SUM(amount) as rev
FROM payment
WHERE EXTRACT(MONTH FROM payment_ts) = 6
GROUP BY dt
ORDER BY dt;
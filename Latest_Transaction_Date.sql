-- This problem was asked by Stitch Fix.

-- Assume you are given the below table on transactions from users. Write a query to get the number of users and total products bought per latest transaction date where each user is bucketed into their latest transaction date.

-- user_transactions
-- column_name	type
-- transaction_id	integer
-- product_id	integer
-- user_id	integer
-- spend	float
-- transaction_date	datetime


SELECT Count(DISTINCT user_id) AS total_users,
       Count(DISTINCT product_id) AS total_products
FROM
  (SELECT user_id,
          spend,
          product_id transaction_date transaction_id
   FROM user_transactions a
   INNER JOIN
     (SELECT user_id,
             max(transaction_date) AS latest_date
      FROM user_transactions) b ON a.user_id = b.user_id
   AND a.transaction_date = b.latest_date)x

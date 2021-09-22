-- This problem was asked by Uber.

-- Assume you are given the below table for spending activity by product type. Write a query to calculate the cumulative spend for each product over time in chronological order.

-- total_transactions
-- column_name	type
-- order_id	integer
-- user_id	integer
-- product_id	string
-- spend	float
-- date	datetime


select product_id, 
	   date, 
	   SUM(spend) OVER (PARTITION BY product_id order by date) as cumulative_spend
from total_transactions
group by product_id, 
		 date

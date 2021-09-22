-- This problem was asked by Robinhood.

-- Assume you are given the below tables for trades and users. Write a query to list the top 3 cities which had the highest number of completed orders.

-- trades
-- column_name	type
-- order_id	integer
-- user_id	integer
-- symbol	string (e.g. "NFLX", "FB", etc.)
-- price	float
-- quantity	integer
-- side	string ("buy", "sell")
-- status	string ("complete", "cancelled")
-- timestamp	datetime

-- users
-- column_name	type
-- user_id	integer
-- city	string
-- email	string
-- signup_date	datetime

SELECT city, 
	 count(distinct case when status = 'complete' then order_id else null end) as completed_orders
FROM trades a inner join users b on a.user_id = b.user_id 
group by 1 
order by 2 desc limit 3

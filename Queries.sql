-- 1. Select all 
SELECT * 
FROM order

-- 2. Select with limit
SELECT * 
FROM order 
LIMIT 10;

-- 3.
SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15;

--4.Write a query to return the 10 earliest orders in the orders table. Include the id, occurred_at, and total_amt_usd.
SELECT id,occurred_at,total_amt_usd
FROM orders
LIMIT 10;

--5.Write a query to return the top 5 orders in terms of largest total_amt_usd. Include the id, account_id, and total_amt_usd.

--6.write a query to return the lowest 20 orders in terms of smallest total_amt_usd. Include the id, account_id, and total_amt_usd.

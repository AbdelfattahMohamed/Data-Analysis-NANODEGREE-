
__Introduction to Logical Operators__
###In the next concepts, you will be learning about Logical Operators. Logical Operators include:
LIKE
--This allows you to perform operations similar to using WHERE and =, but for cases when you might not know exactly what you are looking for.
IN
--This allows you to perform operations similar to using WHERE and =, but for more than one condition.
NOT
--This is used with IN and LIKE to select all of the rows NOT LIKE or NOT IN a certain condition.
AND & BETWEEN
--These allow you to combine operations where all combined conditions must be true.
OR
--This allow you to combine operations where at least one of the combined conditions must be true.
-- Questions:-
-- 1.All the companies whose names start with 'C'.
SELECT name
FROM accounts
WHERE name LIKE 'C%';
-- 2.All companies whose names contain the string 'one' somewhere in the name.
SELECT name
FROM accounts
WHERE name LIKE '%one%';
-- 3.All companies whose names end with 's'.
SELECT name
FROM accounts
WHERE name LIKE '%s';

-- 4.Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and Nordstrom.
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');
-- 5.Use the web_events table to find all information regarding individuals who were contacted via the channel of organic or adwords.
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords');

-- 6.Use the accounts table to find the account name, primary poc, and sales rep id for all stores except Walmart, Target, and Nordstrom.
SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');
-- 7.Use the web_events table to find all information regarding individuals who were contacted via any method except using organic or adwords methods.
SELECT *
FROM web_events
WHERE channel NOT IN ('organic', 'adwords');

--Use the accounts table to find:

-- 1.All the companies whose names do not start with 'C'.
SELECT name
FROM accounts
WHERE name NOT LIKE 'C%';
-- 2.All companies whose names do not contain the string 'one' somewhere in the name.
SELECT name
FROM accounts
WHERE name NOT LIKE '%one%';
-- 3.All companies whose names do not end with 's'.
SELECT name
FROM accounts
WHERE name NOT LIKE '%s';

-- 8.Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and the gloss_qty is 0.
SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

-- 9.Using the accounts table, find all the companies whose names do not start with 'C' and end with 's'.
SELECT name
FROM accounts
WHERE name NOT LIKE 'C%' AND name LIKE '%s';

--10.When you use the BETWEEN operator in SQL, do the results include the values of your endpoints, or not? Figure out the answer to this important question by writing a query that displays the order date and gloss_qty data for all orders where gloss_qty is between 24 and 29. Then look at your output to see if the BETWEEN operator included the begin and end values or not.
SELECT occurred_at, gloss_qty 
FROM orders
WHERE gloss_qty BETWEEN 24 AND 29;

-- 11.You will notice that using BETWEEN is tricky for dates! While BETWEEN is generally inclusive of endpoints, it assumes the time is at 00:00:00 (i.e. midnight) for dates. This is the reason why we set the right-side endpoint of the period at '2017-01-01'.
SELECT *
FROM web_events
WHERE channel IN ('organic', 'adwords') AND occurred_at BETWEEN '2016-01-01' AND '2017-01-01'
ORDER BY occurred_at DESC;

-- 12.Find list of orders ids where either gloss_qty or poster_qty is greater than 4000. Only include the id field in the resulting table.
SELECT id
FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000;

-- 13.Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or poster_qty is over 1000.
SELECT *
FROM orders
WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

-- 14.Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or 'Ana', but it doesn't contain 'eana'.
SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
           AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
           AND primary_poc NOT LIKE '%eana%');
           
__THANK YOU__

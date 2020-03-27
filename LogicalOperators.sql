
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




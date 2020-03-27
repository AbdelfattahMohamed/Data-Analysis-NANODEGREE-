### QUIZ 
__ Q1 __
-- The Chinook database contains all invoices from the beginning of 2009 till the end of 2013.
-- The employees at Chinook store are interested in seeing all invoices that happened in 2013 only.
-- Using the Invoice table, write a query that returns all the info of the invoices in 2013.
SELECT invoice.*
FROM invoice
where invoice.invoicedate between '2013-01-01' and '2014-01-01';
__ Q2 __
--The Chinook team decided to run a marketing campaign in Brazil, Canada, india, and Sweden.
-- Using the customer table, write a query that returns the first name, last name, and country for all customers from the 4 countries.
SELECT firstName,lastName,Country 
FROM customer
Where Country IN("Brazil","Canada","India","Sweden");
__ Q3 __
--Using the Track and Album tables, write a query that returns all the songs that start with the letter 'A' and
--the composer field is not empty.Your query should return the name of the song, the name of the composer, and the title of the album.
SELECT Track.name,Track.Composer,Album.Title 
From Album
JOIN Album
ON Track.AlbumId = Album.AlbumId
WHERE Track.name LIKE 'A%' AND Track.Composer NOT LIKE '';
__ Q4 __
--The Chinook team would like to throw a promotional Music Festival for their top 10 cutomers who have spentthe most in a single invoice.
-- Write a query that returns the first name, last name, and invoice total for the top 10 invoices ordered by invoice total descending.
SELECT C.Firstname,C.Lastname,I.Total
FROM Customer AS C
JOIN Invoice AS I
ON C.CustomerId =I.CustomerId
ORDER BY I.total DESC
LIMIT 10


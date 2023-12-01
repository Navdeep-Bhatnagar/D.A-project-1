-- que 1.Identify the primary keys and foreign keys in maven movies db. Discuss the differences -- 




-- que . 2 List all details of actors 
-- ans 2 -- 
SELECT * FROM actor ;

-- que 3 List all customer information from DB --
-- ans --
 SELECT * FROM customer;

-- que 4 List different countries-- 
-- ans 4 --
SELECT country FROM country ;

-- que 5 Display all active customers--
-- ans 5 --
SELECT * FROM customer WHERE active = 1;

-- que 6 List of all rental IDs for customer with ID 1 ?
-- ams 6--
SELECT rental_id FROM rental WHERE customer_id = 1;

-- que 7 Display all the films whose rental duration is greater than 5
-- ans 7 --
select * from rental ;
select title, rental_duration  from rental where  rental_duration > 5;

-- que 8  List the total number of films whose replacement cost  is greater than $15 and less than $20 --
-- ans 8-- 
SELECT COUNT(*) 
FROM film
WHERE replacement_cost > 15 AND replacement_cost < 20;

-- que 9 Display the count of unique first names of actors -- 
-- anss 9 --
SELECT COUNT(DISTINCT first_name) 
FROM actor; 

-- que 10 Display the first 10 records from the customer table ? --
-- ans 10--
SELECT *FROM customer
LIMIT 10;

-- que 11Display the first 3 records from the customer table whose first name starts with ‘b’.--
-- ans 11-- 
SELECT *
FROM customer
WHERE first_name LIKE 'b%'
LIMIT 3;

-- que 12 Display the names of the first 5 movies which are rated as ‘G’.--
-- ans 12 --
SELECT title
FROM film
WHERE rating = 'G'
LIMIT 5;

-- que 13 Find all customers whose first name starts with "a" ?--
-- ans 13--
SELECT *
FROM customer
WHERE first_name LIKE 'a%';

-- que 14 Find all customers whose first name ends with "a"--
-- ans14-
SELECT *
FROM customer
WHERE first_name LIKE '%a';

-- que 15Dsplay the list of first 4 cities which start and end with ‘a’ --
-- ans 15 -- 
SELECT city
FROM city
WHERE city LIKE 'a%a'
LIMIT 4;

-- que 16 Find all customers whose first name have "NI" in any position.--
-- ans 16 -- 
SELECT *
FROM customer
WHERE first_name LIKE '%NI%';

-- que17 Find all customers whose first name have "r" in the second position--
-- ans17--
SELECT *
FROM customer
WHERE first_name LIKE '_r%';

-- que 18 Find all customers whose first name starts with "a" and are at least 5 characters in length.--
-- ans 18--
SELECT *
FROM customer
WHERE first_name LIKE 'a%' AND LENGTH(first_name) >= 5;

-- que 19 Find all customers whose first name starts with "a" and ends with "o"--
-- ans 19--
SELECT *
FROM customer
WHERE first_name LIKE 'a%o';

-- que 20 Get the films with pg and pg-13 rating using IN operator. --
-- ans --
SELECT *
FROM film
WHERE rating IN ('PG', 'PG-13');

-- que 21 Get the films with length between 50 to 100 using between operator --
-- ans 21 --
SELECT *
FROM film
WHERE length BETWEEN 50 AND 100;

-- que 22 Get the top 50 actors using limit operator--
-- ans 22 --
SELECT *
FROM actor
ORDER BY actor_id
LIMIT 50;

-- que 23 Get the distinct films id from inventory table--
-- ans 23-- 
select distinct film_id from inventory ;



























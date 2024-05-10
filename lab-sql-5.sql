USE SAKILA; 

-- In the table actor, which are the actors whose last names are not repeated?
SELECT LAST_NAME
FROM SAKILA.ACTOR
GROUP BY LAST_NAME 
HAVING COUNT(*) = 1;

-- Which last names appear more than once? 
SELECT LAST_NAME
FROM SAKILA.ACTOR
GROUP BY LAST_NAME 
HAVING COUNT(*) > 1;

-- Using the rental table, find out how many rentals were processed by each employee.
SELECT STAFF_ID, COUNT(RENTAL_ID)
FROM SAKILA.RENTAL
GROUP BY  1
ORDER BY 2;

-- Using the film table, find out how many films were released each year.
SELECT RELEASE_YEAR, COUNT(FILM_ID) AS FILM_BY_YEAR
FROM SAKILA.FILM
GROUP BY  1
ORDER BY 2;

-- Using the film table, find out for each rating how many films were there.
SELECT RATING, COUNT(FILM_ID) AS FILM_RATING
FROM SAKILA.FILM
GROUP BY 1
ORDER BY 2;

-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT RATING, ROUND(AVG(LENGTH), 2)
FROM SAKILA.FILM
GROUP BY 1
ORDER BY 2 DESC;

-- Which kind of movies (rating) have a mean duration of more than two hours?
SELECT 



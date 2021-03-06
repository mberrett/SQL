/*
Query the average population of all cities in CITY
where District is California.
*/

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = "California";

/*
Query the average population for all cities in CITY,
rounded down to the nearest integer.
*/

SELECT ROUND(AVG(POPULATION))
FROM CITY;

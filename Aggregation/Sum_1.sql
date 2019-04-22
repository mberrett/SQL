/*
Query the total population of all cities in CITY
where District is California.
*/

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = "California";

/*
Query the sum of the populations for all Japanese cities in CITY.
The COUNTRYCODE for Japan is JPN.
*/

SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = "JPN";

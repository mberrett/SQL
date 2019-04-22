/*
Given the CITY and COUNTRY tables,
query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT CITY.Name
FROM CITY, COUNTRY
WHERE CITY.CountryCode = COUNTRY.Code
AND COUNTRY.Continent = "Africa"

/*
Given the CITY and COUNTRY tables, query the names
of all the continents (COUNTRY.Continent)
and their respective average city populations (CITY.Population)
rounded down to the nearest integer.
*/

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population))
FROM CITY, COUNTRY
WHERE CITY.CountryCode = COUNTRY.Code
GROUP BY COUNTRY.Continent

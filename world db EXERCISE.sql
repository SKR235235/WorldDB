use world;

#TASK 1 - Using count, get the number of cities in the USA​
SELECT count(city.name), CountryCode
FROM city
WHERE CountryCode = "USA";

#TASK 2 - Find out what the population and average life expectancy for people in Argentina (ARG) is.​
SELECT Name, LifeExpectancy
FROM country
WHERE name = "Argentina";

#TASK 3 - Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy desc
LIMIT 1;

#TASK 4 - Select 25 cities around the world that start with the letter 'F' in a single SQL query.​
SELECT *
FROM city
WHERE name LIKE 'F%'
LIMIT 25;

#TASK 5 - Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.​
SELECT  Id, Name, Population
FROM city
LIMIT 10;

#TASK 6 - Create a SQL statement to find only those cities from city table whose population is larger than 2000000.​
SELECT name, Population
FROM city
WHERE Population > 2000000
ORDER BY Population desc;


#TASK 7 - Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.​
SELECT *
FROM city
WHERE name LIKE 'Be%'
ORDER BY Name asc;

#TASK 8 - Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT name, Population
FROM city
WHERE Population BETWEEN  500000 AND 1000000
ORDER BY Population desc;

#TASK 9 - Create a SQL statement to find a city with the lowest population in the city table.
SELECT name, Population
FROM city
ORDER BY Population asc
LIMIT 1;

#BONUS
#Create a SQL statement to find the capital of Spain (ESP).​
SELECT city.Name 
FROM city
JOIN country
ON city.ID = country.Capital
WHERE country.Name = "Spain";

#Create a SQL statement to list all the languages spoken in the Caribbean region.​
SELECT countrylanguage.language
FROM countrylanguage
JOIN country
ON countrylanguage.CountryCode = country.Code
WHERE region = "Caribbean"
GROUP BY countrylanguage.language;

#Create a SQL statement to find all cities from the Europe continent.
SELECT city.Name, Continent
FROM city
JOIN country
ON city.CountryCode = country.Code
WHERE Continent = "Europe";

#TASK 10
#Create a MS Word file​
#Identify the primary key in country table.​ - Code
#Identify the primary key in city table.​ - ID
#Identify the primary key in countrylanguage table.​ - CountryCode
#Identify the foreign key in city table.​ CountryCode is Primary Key in Country Table
#Identify the foreign key in countrylanguage table. CountryCode is Primary Key in Country TableSELECT country.Name, countrylanguage.language, region FROM countrylanguage JOIN country ON countrylanguage.CountryCode = country.Code WHERE region = "Caribbean" GROUP BY countrylanguage.language LIMIT 0, 1000

SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population >=200000000

SELECT name, gdp/population
FROM world
WHERE population>200000000

SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

/* IN represents in a category*/
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

SELECT name
FROM world
WHERE name LIKE '%United%'

SELECT name, population, area
FROM world
WHERE population > 250000000 OR area>3000000

SELECT name, population, area
FROM world
WHERE (population > 250000000 AND area<3000000) OR (population < 250000000 AND area>3000000)

/* round function is used for decimal places */
SELECT name, ROUND(population/1000000 , 2), ROUND(gdp/1000000000 , 2)
FROM world
WHERE continent = 'South America'


/* -3 represents to nearest 1000 */
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp>1000000000000

SELECT name, capital
FROM world
WHERE LENGTH(capital)=LENGTH(name)

SELECT name, capital
FROM world
WHERE LEFT(name, 1)=LEFT(capital, 1) AND  name<>capital

SELECT name
FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name not LIKE '% %'
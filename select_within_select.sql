SELECT name
FROM world
WHERE population>(SELECT population FROM world WHERE name='Russia')

SELECT name
FROM world
WHERE continent ='Europe' AND gdp/population>(SELECT gdp/population FROM world WHERE name='United Kingdom')

SELECT name, continent
FROM world
WHERE continent IN (SELECT continent FROM world WHERE name IN ('Argentina', 'Australia')) ORDER BY name

SELECT name, population
FROM world
WHERE population > (SELECT population FROM world WHERE name='Canada') AND population < (SELECT population FROM world WHERE name='Poland')

SELECT name, CONCAT(ROUND(population*100/(SELECT population FROM world WHERE name='Germany'), 0), '%')
FROM world
WHERE continent='Europe'

SELECT name
FROM world
WHERE gdp>ALL(SELECT gdp FROM world WHERE continent='Europe' AND gdp>0)

SELECT continent, name, area
FROM world a
WHERE area>=ALL(SELECT area FROM world b WHERE a.continent=b.continent)

SELECT continent, name
FROM world a
WHERE name<= ALL(SELECT name FROM world b WHERE a.continent=b.continent)

/* put number at first*/
SELECT name, continent, population
FROM world a
WHERE 25000000>=ALL(SELECT population FROM world b WHERE a.continent=b.continent AND population>0)

SELECT name, continent
FROM world a
WHERE population>ALL (SELECT population*3 FROM world b WHERE a.continent=b.continent AND a.name != b.name)
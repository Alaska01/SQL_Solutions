SELECT name FROM world
WHERE population >
(SELECT population FROM world
WHERE name='Russia')

SELECT name
From world
WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world WHERE name
='United Kingdom')

SELECT name, continent
FROM world
WHERE continent = (SELECT Continent FROM world  WHERE name = 'Argentina') OR continent = (SELECT
Continent FROM world WHERE name = 'Australia') ORDER By name

SELECT name, population
FROM world
WHERE population > (SELECT population
FROM world
WHERE name ='Canada')  AND population < (SELECT population FROM world WHERE name ='Poland')

SELECT name, ROUND((population/(SELECT population FROM world WHERE name ='Germany'))*100) || '%'
FROM world
WHERE continent = 'Europe'

SELECT name
FROM world
WHERE gdp > ALL(SELECT gdp
FROM world
WHERE name ='Germany')

SELECT continent, name, area FROM world x
WHERE area >= ALL
(SELECT area FROM world y
WHERE y.continent=x.continent
AND area>0)

SELECT continent, MIN(name) AS name
FROM world 
GROUP BY continent
ORDER by continent

SELECT name, continent, population FROM world x
WHERE 25000000>=ALL (SELECT population FROM world y
WHERE x.continent=y.continent
AND population>0)

SELECT x.name, x.continent
FROM world x
WHERE x.population >ALL(SELECT population*3
FROM world y
WHERE y.continent = x.continent
AND x.name<>y.name)


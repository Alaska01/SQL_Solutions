SELECT SUM(population)
FROM world

SELECT DISTINCT continent
FROM world

SELECT DISTINCT SUM(gdp)
FROM world
WHERE continent = 'Africa'

SELECT DISTINCT COUNT(name)
FROM world
WHERE area >= 1000000

SELECT SUM(population)
FROM world
WHERE name ='Estonia' OR name = 'Latvia' OR name = 'Lithuania'

SELECT continent, COUNT(name)
FROM world
GROUP BY continent



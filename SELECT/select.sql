SELECT population 
FROM world
WHERE name = 'GERMANY'

SELECT name, population
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000

SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

-- SELECT QUIZ FOR NOBEL TABLE

SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature'

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr BETWEEN 2000 AND 2020

SELECT * FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989


SELECT * FROM nobel
WHERE winner IN ('Barack Obama',
'Jimmy Carter',
'Woodrow Wilson','Theodore Roosevelt')

SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

SELECT yr, subject, winner
FROM nobel
WHERE subject = 'physics' AND yr = 1980 OR subject ='chemistry' AND yr =1984

SELECT * FROM nobel
WHERE yr = 1980 AND (
subject ='Peace' OR subject ='literature' OR subject ='economics' OR subject ='physics')

SELECT * FROM nobel
WHERE (subject = 'Medicine' AND yr BETWEEN 1901 AND 1909) OR (subject ='Literature' AND yr BETWEEN
2004 AND 2020)

SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG'

SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL'

SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%'

SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY (subject IN ('Physics','Chemistry')) ASC, subject, winner
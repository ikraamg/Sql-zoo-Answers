-- 1
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
-- 2
SELECT name 
FROM world
WHERE continent = 'Europe' 
AND gdp/population > 
 (SELECT gdp/population 
   FROM world WHERE name = 'United Kingdom')
-- 3
SELECT name, continent 
  FROM world
WHERE continent = ( 
  SELECT continent 
    FROM world 
  WHERE name IN ('Argentina'))
OR continent = ( 
  SELECT continent 
    FROM world 
  WHERE name IN ('Australia'))
ORDER BY name
-- 4
SELECT name, population FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name = 'Poland')
-- 5
SELECT name, CONCAT(ROUND(
  (population/(SELECT population 
   FROM world 
     WHERE name = 
    'Germany'
    )*100
    ),0
    ), '%') 
FROM world
WHERE continent = 'Europe'
-- 6
SELECT name 
  FROM world
WHERE gdp > ALL(SELECT gdp FROM world WHERE continent = 'Europe' AND gdp > 0)
-- 7

-- 8

-- 9

-- 10

-- 11

-- 12

-- 13
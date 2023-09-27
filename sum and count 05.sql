-- SUM and COUNT


-- 1) Total world population
SELECT SUM(population) FROM world;

-- 2) List of continents
select distinct continent from world;

-- 3) GDP of Africa
select sum(gdp)as totalgdp from world where continent = 'Africa';

-- 4) Count the big countries
select count(name) from world where area>=1000000;

-- 5) Baltic states population
select sum(population) from world where name in('Estonia','latvia','Lithuania');

-- 6)Using GROUP BY and HAVING - ---------  Counting the countries of each continent
select continent, count(name) from world group by continent;

-- 7)Counting big countries in each continent
SELECT continent, COUNT(name) FROM world
  WHERE population > 10000000
  GROUP BY continent;
  
-- 8) List the continents that have a total population of at least 100 million.
select continent from world group by continent having sum(population)>100000000;
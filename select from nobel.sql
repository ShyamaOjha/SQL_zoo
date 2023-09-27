-- ---------------------------
-- --- Select from nobel -- ---
-- ---------------------------

-- 1) Winners from 1950
SELECT yr, subject, winner FROM nobel WHERE yr = 1950;

-- 2)1962 Literature
SELECT winner FROM nobel  WHERE yr = 1962 AND subject = 'literature';

-- 3) Albert Einstein
SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';

-- 4)Recent Peace Prizes
SELECT winner FROM nobel WHERE subject = 'Peace' AND yr >= 2000;

-- 5) Literature in the 1980's
SELECT yr, subject, winner  FROM nobel WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;

-- 6)Only Presidents
SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter');

-- 7)John
SELECT winner FROM nobel WHERE winner LIKE 'JOHN %';

-- 8)Chemistry and Physics from different years
SELECT * FROM nobel WHERE yr = 1980 AND subject = 'Physics' OR yr = 1984 AND subject = 'Chemistry';

-- 9)Exclude Chemists and Medics
SELECT *  from nobel where  yr = 1980 and subject not in  ('Chemistry','Medicine');

-- 10)Early Medicine, Late Literatur
SELECT * from nobel where yr < 1910 and subject = 'Medicine' OR yr >= 2004 and subject = 'Literature';

### Harder Questions:
-- 11)Umlaut
SELECT * from nobel where winner = 'Peter Grünberg';

-- 12)Apostrophe
SELECT * from nobel where winner = 'Eugene O''Neill';

-- 13)Knights of the realm
SELECT winner, yr, subject from nobel where winner LIKE 'Sir %' Order by yr desc, winner;

-- 14)Chemistry and Physics last
SELECT winner, subject from nobel WHERE yr=1984 order by subject in ('Chemistry','Physics'), subject, winner;
 
 
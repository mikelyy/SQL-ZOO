SELECT yr, subject, winner
FROM nobel
WHERE yr=1950

SELECT winner
FROM nobel
WHERE yr=1962 AND subject='Literature'

SELECT yr, subject
FROM nobel
WHERE winner='Albert Einstein'

SELECT winner
FROM nobel
WHERE subject='Peace' AND yr>=2000

SELECT yr, subject, winner
FROM nobel
WHERE subject='Literature' AND yr>=1980 AND yr<=1989

SELECT yr, subject, winner
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama')

/* % is used to show anything*/
SELECT winner
FROM nobel
WHERE winner LIKE 'John%'

SELECT yr, subject, winner
FROM nobel
WHERE (yr=1980 AND subject='Physics') OR (yr=1984 AND subject='Chemistry')

SELECT yr, subject, winner
FROM nobel
WHERE yr=1980 AND subject not IN ('Chemistry', 'Medicine')

SELECT yr, subject, winner
FROM nobel
WHERE (subject='Medicine' AND yr<1910) OR (subject='Literature' AND yr>=2004)

/* * represents all the details of information*/
SELECT *
FROM nobel
WHERE winner='PETER GRÜNBERG'

/* if there is special character like ' in the name, we make it double ''*/
SELECT *
FROM nobel
WHERE winner='EUGENE O''NEILL'

/* DESC means descending order = most recent first*/
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner

/* The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.*/
SELECT winner, subject
FROM nobel
WHERE yr=1984 ORDER BY subject IN ('Physics', 'Chemistry'), subject, winner
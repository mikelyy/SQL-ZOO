SELECT matchid, player 
FROM goal 
WHERE teamid = 'GER'

SELECT id, stadium, team1, team2
FROM game
WHERE id=1012

SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON (id=matchid)
WHERE teamid='GER'

SELECT team1, team2, player
FROM game JOIN goal on (id=matchid)
WHERE player LIKE 'Mario%'

SELECT team1, team2, player
FROM game JOIN goal on (id=matchid)
WHERE player LIKE 'Mario%'

SELECT  mdate, teamname
FROM game JOIN eteam on (team1=eteam.id)
WHERE coach='Fernando Santos'

SELECT player
FROM game JOIN goal on (id=matchid)
WHERE stadium='National Stadium, Warsaw'

SELECT DISTINCT player
FROM goal JOIN game on (id=matchid)
WHERE (team1='GER' OR team2='GER') AND (teamid!='GER')

SELECT teamname, COUNT(teamid)
FROM goal JOIN eteam on (teamid=id)
GROUP BY teamname

SELECT stadium, COUNT(stadium)
FROM game JOIN goal on (id=matchid)
GROUP BY stadium

SELECT matchid, mdate, COUNT(mdate)
FROM game JOIN goal ON (id=matchid)
WHERE (team1='POL' OR team2='POL')
GROUP BY mdate, matchid

SELECT matchid, mdate, COUNT(matchid)
FROM game JOIN goal ON (id=matchid)
WHERE (teamid='GER')
GROUP BY matchid, mdate


/* Review Left Join contains all information from left table */
SELECT mdate, team1, SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) AS score1, team2, SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) AS score2
FROM game LEFT JOIN goal ON (id=matchid)
GROUP BY mdate, team1, team2
ORDER BY mdate, matchid, team1, team2

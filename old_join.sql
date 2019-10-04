SELECT who, country.name
FROM ttms JOIN country ON (ttms.country=country.id)
WHERE games = 2000

SELECT who, color
FROM ttms JOIN country ON (ttms.country=country.id)
WHERE country.name='Sweden'

SELECT games
FROM ttms JOIN country ON (ttms.country=country.id)
WHERE country.name='China' AND ttms.color='gold'

SELECT who
FROM ttws JOIN games ON (ttws.games=games.yr)
WHERE city = 'Barcelona'

SELECT city, color
FROM ttws JOIN games ON (ttws.games=games.yr)
WHERE who='Jing Chen'

SELECT who, city
FROM ttws JOIN games ON (ttws.games=games.yr)
WHERE ttws.color='gold'

SELECT games, color
FROM ttmd JOIN team ON (ttmd.team=team.id)
WHERE team.name LIKE '%Yan Sen%'

SELECT name
FROM ttmd JOIN team ON (ttmd.team=team.id)
WHERE color='gold' AND games=2004

SELECT name
FROM ttmd JOIN team ON (ttmd.team=team.id)
WHERE country='FRA'


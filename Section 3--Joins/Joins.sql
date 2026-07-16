-- Query 11 : Players and their teams

SELECT
    p.player_name,
    p.position,
    t.team_name
FROM Players p
JOIN Teams t
ON p.team_id = t.team_id
ORDER BY t.team_name;


-- Query 12 : Players per team

SELECT
    t.team_name,
    COUNT(p.player_id) AS TotalPlayers
FROM Teams t
JOIN Players p
ON t.team_id = p.team_id
GROUP BY t.team_id, t.team_name
ORDER BY TotalPlayers DESC;



-- Query 13 : Game schedule with team names

SELECT
    g.game_id,
    g.game_date,
    ht.team_name AS HomeTeam,
    at.team_name AS AwayTeam,
    g.home_score,
    g.away_score
FROM Games g
JOIN Teams ht
ON g.home_team = ht.team_id
JOIN Teams at
ON g.away_team = at.team_id
LIMIT 20;



-- Query 14 : Player statistics

SELECT
    p.player_name,
    ps.points,
    ps.rebounds,
    ps.assists
FROM PlayerStats ps
JOIN Players p
ON ps.player_id = p.player_id
LIMIT 20;





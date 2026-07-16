/*============================================================
SECTION 5 : INTERMEDIATE SQL
Concepts:
- HAVING
- Subqueries
- CASE
- DISTINCT
============================================================*/

--Which teams have won more than 10 games?

SELECT
    t.team_name,
    COUNT(*) AS TotalWins
FROM Games g
JOIN Teams t
ON g.winner = t.team_id
GROUP BY t.team_id, t.team_name
HAVING COUNT(*) > 10
ORDER BY TotalWins DESC;

--Players Averaging More Than 20 Points

SELECT
    p.player_name,
    ROUND(AVG(ps.points),2) AS AvgPoints
FROM Players p
JOIN PlayerStats ps
ON p.player_id = ps.player_id
GROUP BY p.player_id, p.player_name
HAVING AVG(ps.points) > 20
ORDER BY AvgPoints DESC;

--Highest Single-Game Score

SELECT
    p.player_name,
    ps.points
FROM PlayerStats ps
JOIN Players p
ON ps.player_id = p.player_id
ORDER BY ps.points DESC
LIMIT 1;

--Games Won by Each Team

SELECT
    t.team_name,
    COUNT(g.game_id) AS GamesWon
FROM Teams t
LEFT JOIN Games g
ON t.team_id = g.winner
GROUP BY t.team_id, t.team_name
ORDER BY GamesWon DESC;

--Team with Highest Average Home Score

SELECT
    t.team_name,
    ROUND(AVG(g.home_score),2) AS AvgHomeScore
FROM Games g
JOIN Teams t
ON g.home_team = t.team_id
GROUP BY t.team_id, t.team_name
ORDER BY AvgHomeScore DESC;

--Total Games Played by Each Team

SELECT
    t.team_name,
    COUNT(*) AS GamesPlayed
FROM Teams t
JOIN Games g
ON t.team_id = g.home_team
OR t.team_id = g.away_team
GROUP BY t.team_id, t.team_name
ORDER BY GamesPlayed DESC;

--Best Shooter (Minimum 5 Games)


SELECT
    p.player_name,
    ROUND(AVG(ps.fg_percent),2) AS AvgFG
FROM Players p
JOIN PlayerStats ps
ON p.player_id = ps.player_id
GROUP BY p.player_id, p.player_name
HAVING COUNT(ps.game_id) >= 5
ORDER BY AvgFG DESC
LIMIT 10;

--Categorize Players Using CASE

SELECT
    player_name,
    age,
    CASE
        WHEN age < 25 THEN 'Young'
        WHEN age BETWEEN 25 AND 30 THEN 'Prime'
        ELSE 'Veteran'
    END AS CareerStage
FROM Players;

--Players Who Scored Above Average

SELECT
    p.player_name,
    SUM(ps.points) AS TotalPoints
FROM Players p
JOIN PlayerStats ps
ON p.player_id = ps.player_id
GROUP BY p.player_id, p.player_name
HAVING SUM(ps.points) >
(
    SELECT AVG(PlayerTotal)
    FROM
    (
        SELECT SUM(points) AS PlayerTotal
        FROM PlayerStats
        GROUP BY player_id
    ) AS AvgScores
)
ORDER BY TotalPoints DESC;


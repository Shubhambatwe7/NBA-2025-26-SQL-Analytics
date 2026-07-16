Section-1 Basic Query


-- Query 1 : Display all NBA teams

SELECT *
FROM Teams;

-- Query 2 : Display all players

SELECT *
FROM Players;

-- Query 3 : Count total players

SELECT COUNT(*) AS TotalPlayers
FROM Players;

-- Query 4 : Average age of players

SELECT
ROUND(AVG(age),2) AS AverageAge
FROM Players;

-- Query 5 : Tallest player

SELECT
player_name,
height_cm
FROM Players
ORDER BY height_cm DESC
LIMIT 1;

-- Query 6 : Heaviest player

SELECT
player_name,
weight_kg
FROM Players
ORDER BY weight_kg DESC
LIMIT 1;


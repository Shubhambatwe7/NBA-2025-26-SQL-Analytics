/*============================================================
SECTION 2 : FILTERING
============================================================



-- Query 7 – Players Older Than 30

SELECT
player_name,
age
FROM Players
WHERE age > 30;

--Query 8 – Point Guards Only

SELECT
player_name,
position
FROM Players
WHERE position='PG';
 
--Query 9 – Players Taller Than 205 cm

SELECT
player_name,
height_cm
FROM Players
WHERE height_cm > 205;

--Query 10 – Players Between 24 and 28 Years

SELECT
player_name,
age
FROM Players
WHERE age BETWEEN 24 AND 28;
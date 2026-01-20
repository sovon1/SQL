-- =============================================================
-- Module 04: Advanced Querying
-- =============================================================

-- -------------------------------------------------------------
-- Exercise 4.1: The Race (Ranking)
-- -------------------------------------------------------------
-- Goal: Rank spacecrafts by MaxSpeed. The fastest gets Rank 1.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 4.2: Running Total
-- -------------------------------------------------------------
-- Goal: For MissionID 1, show ItemName, WeightKG, and a Running Total of weight.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 4.3: Above Average Planets (Subquery)
-- -------------------------------------------------------------
-- Goal: Find Planets with population > Average Population of All Planets.

-- Write your query below:



-- =============================================================
-- SOLUTIONS
-- =============================================================
/*
-- 4.1
SELECT Name, MaxSpeed, RANK() OVER (ORDER BY MaxSpeed DESC) as Rnk
FROM Spacecrafts;

-- 4.2
SELECT ItemName, WeightKG,
       SUM(WeightKG) OVER (ORDER BY ItemName ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as RunningTotal
FROM Cargo
WHERE MissionID = 1;

-- 4.3
SELECT * FROM Planets
WHERE Population > (SELECT AVG(Population) FROM Planets);
*/

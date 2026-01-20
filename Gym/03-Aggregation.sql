-- =============================================================
-- Module 03: Aggregation
-- =============================================================

-- -------------------------------------------------------------
-- Exercise 3.1: Sector Stats
-- -------------------------------------------------------------
-- Goal: Count how many planets are in each Sector.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 3.2: Mission Cargo
-- -------------------------------------------------------------
-- Goal: Calculate the Total Weight of Cargo for each Mission.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 3.3: High Value Missions
-- -------------------------------------------------------------
-- Goal: Find Missions where the Total Cargo Value is > 10,000 Credits.
-- Hint: Use HAVING.

-- Write your query below:



-- =============================================================
-- SOLUTIONS
-- =============================================================
/*
-- 3.1
SELECT Sector, COUNT(*) AS PlanetCount
FROM Planets
GROUP BY Sector;

-- 3.2
SELECT MissionID, SUM(WeightKG) AS TotalWeight
FROM Cargo
GROUP BY MissionID;

-- 3.3
SELECT MissionID, SUM(ValueCredits) AS TotalValue
FROM Cargo
GROUP BY MissionID
HAVING SUM(ValueCredits) > 10000;
*/

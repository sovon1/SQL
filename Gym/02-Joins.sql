-- =============================================================
-- Module 02: Joins
-- =============================================================

-- -------------------------------------------------------------
-- Exercise 2.1: Crew Origins (Inner Join)
-- -------------------------------------------------------------
-- Goal: List Crew FirstName, LastName, and their Home Planet Name.
-- Hint: Join Crew and Planets on BasePlanetID = PlanetID.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 2.2: Mission Manifest (Left Join)
-- -------------------------------------------------------------
-- Goal: List all Missions (MissionName) and the Ship Name.
-- Note: Some missions might not have a ship yet. We want to see them too.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 2.3: Finding Non-Matches
-- -------------------------------------------------------------
-- Goal: Find Planets that have NO Crew assigned to them.
-- Hint: Use LEFT JOIN and filter where the right side key IS NULL.

-- Write your query below:



-- =============================================================
-- SOLUTIONS
-- =============================================================
/*
-- 2.1
SELECT C.FirstName, C.LastName, P.Name AS PlanetName
FROM Crew C
INNER JOIN Planets P ON C.BasePlanetID = P.PlanetID;

-- 2.2
SELECT M.MissionName, S.Name AS ShipName
FROM Missions M
LEFT JOIN Spacecrafts S ON M.CraftID = S.CraftID;

-- 2.3
SELECT P.Name
FROM Planets P
LEFT JOIN Crew C ON P.PlanetID = C.BasePlanetID
WHERE C.CrewID IS NULL;
*/

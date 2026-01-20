USE SQLUniverse;
GO

-- =============================================
-- MODULE 02 SOLUTIONS
-- =============================================

-- Exercise 02-01: List Crew members and their Home Planet Name
CREATE VIEW Solutions.Solution_02_01 AS
SELECT C.FirstName, C.LastName, P.Name AS PlanetName
FROM Crew C
INNER JOIN Planets P ON C.BasePlanetID = P.PlanetID;
GO

-- Exercise 02-02: List all Missions and the Ship Name (Include Missions with no ship assigned if any)
CREATE VIEW Solutions.Solution_02_02 AS
SELECT M.MissionName, S.Name AS ShipName
FROM Missions M
LEFT JOIN Spacecrafts S ON M.CraftID = S.CraftID;
GO

-- Exercise 02-03: Find Missions that launch and land on the SAME planet
CREATE VIEW Solutions.Solution_02_03 AS
SELECT M.MissionName, P.Name AS PlanetName
FROM Missions M
JOIN Planets P ON M.LaunchPlanetID = P.PlanetID
WHERE M.LaunchPlanetID = M.DestinationPlanetID;
GO

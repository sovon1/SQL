USE SQLUniverse;
GO

-- =============================================
-- MODULE 03 SOLUTIONS
-- =============================================

-- Exercise 03-01: Count crew per planet
CREATE VIEW Solutions.Solution_03_01 AS
SELECT P.Name, COUNT(C.CrewID) AS CrewCount
FROM Planets P
LEFT JOIN Crew C ON P.PlanetID = C.BasePlanetID
GROUP BY P.Name;
GO

-- Exercise 03-02: Total cargo weight per mission
CREATE VIEW Solutions.Solution_03_02 AS
SELECT MissionID, SUM(WeightKG) AS TotalWeight
FROM Cargo
GROUP BY MissionID;
GO

-- Exercise 03-03: Missions with total cargo value > 10000
CREATE VIEW Solutions.Solution_03_03 AS
SELECT MissionID, SUM(ValueCredits) AS TotalValue
FROM Cargo
GROUP BY MissionID
HAVING SUM(ValueCredits) > 10000;
GO

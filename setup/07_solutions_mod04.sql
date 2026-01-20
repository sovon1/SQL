USE SQLUniverse;
GO

-- =============================================
-- MODULE 04 SOLUTIONS
-- =============================================

-- Exercise 04-01: Rank ships by speed using Window Functions
CREATE VIEW Solutions.Solution_04_01 AS
SELECT Name, MaxSpeed,
       RANK() OVER (ORDER BY MaxSpeed DESC) AS SpeedRank
FROM Spacecrafts;
GO

-- Exercise 04-02: Cumulative cargo weight using Window Functions
CREATE VIEW Solutions.Solution_04_02 AS
SELECT MissionID, ItemName, WeightKG,
       SUM(WeightKG) OVER (PARTITION BY MissionID ORDER BY ItemName) AS RunningTotal
FROM Cargo;
GO

-- Exercise 04-03: Find planets with above average population (Subquery)
CREATE VIEW Solutions.Solution_04_03 AS
SELECT * FROM Planets
WHERE Population > (SELECT AVG(Population) FROM Planets);
GO

-- Exercise 04-04: CTE to find missions with total cargo > 5000 (CTE)
CREATE VIEW Solutions.Solution_04_04 AS
WITH MissionWeights AS (
    SELECT MissionID, SUM(WeightKG) as TotalWeight
    FROM Cargo
    GROUP BY MissionID
)
SELECT M.MissionName, W.TotalWeight
FROM Missions M
JOIN MissionWeights W ON M.MissionID = W.MissionID
WHERE W.TotalWeight > 5000;
GO

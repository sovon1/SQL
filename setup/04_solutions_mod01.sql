USE SQLUniverse;
GO

-- =============================================
-- MODULE 01 SOLUTIONS
-- Users do not see this script. It creates the "Truth" views.
-- =============================================

-- Exercise 01-01: Select all columns from Planets
CREATE VIEW Solutions.Solution_01_01 AS
SELECT * FROM Planets;
GO

-- Exercise 01-02: Select only Name and Sector from Planets
CREATE VIEW Solutions.Solution_01_02 AS
SELECT Name, Sector FROM Planets;
GO

-- Exercise 01-03: Find all planets in the 'Sol' sector
CREATE VIEW Solutions.Solution_01_03 AS
SELECT * FROM Planets WHERE Sector = 'Sol';
GO

-- Exercise 01-04: Find planets with population > 1 billion
CREATE VIEW Solutions.Solution_01_04 AS
SELECT * FROM Planets WHERE Population > 1000000000;
GO

-- Exercise 01-05: List the Top 3 fastest Spacecrafts
-- NOTE: Views support ORDER BY only if TOP is used.
CREATE VIEW Solutions.Solution_01_05 AS
SELECT TOP 3 * FROM Spacecrafts ORDER BY MaxSpeed DESC;
GO

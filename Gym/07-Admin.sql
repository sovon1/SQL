-- =============================================================
-- Module 07: Admin & Performance
-- =============================================================

-- -------------------------------------------------------------
-- Exercise 7.1: Indexing
-- -------------------------------------------------------------
-- Goal: Create a Non-Clustered Index on the 'Sector' column of the 'Planets' table.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 7.2: Security
-- -------------------------------------------------------------
-- Goal: Create a user 'Cadet' (assume Login exists) and grant SELECT on Planets.

-- Write your query below:



-- =============================================================
-- SOLUTIONS
-- =============================================================
/*
-- 7.1
CREATE INDEX IX_Planets_Sector ON Planets(Sector);

-- 7.2
CREATE USER Cadet FOR LOGIN Cadet;
GRANT SELECT ON Planets TO Cadet;
*/

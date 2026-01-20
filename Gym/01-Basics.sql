-- =============================================================
-- Module 01: The Basics (Retrieval & Filtering)
-- =============================================================

-- PRE-REQUISITE:
-- Ensure you have connected to the 'SQLUniverse' database.

-- -------------------------------------------------------------
-- Exercise 1.1: The Full Map
-- -------------------------------------------------------------
-- Goal: Retrieve all details for all Planets.
-- Hint: Use the wildcard *.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 1.2: Specific Data
-- -------------------------------------------------------------
-- Goal: Select only the Name and Sector from the Planets table.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 1.3: Filtering Text
-- -------------------------------------------------------------
-- Goal: Find all planets in the 'Sol' sector.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 1.4: Filtering Numbers & Sorting
-- -------------------------------------------------------------
-- Goal: Find planets with Population > 1 Billion, sorted by Population DESC.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 1.5: Pattern Matching
-- -------------------------------------------------------------
-- Goal: Find planets where the Name starts with 'M'.
-- Hint: Use LIKE 'M%'.

-- Write your query below:



-- =============================================================
-- SOLUTIONS (Scroll down only after trying!)
-- =============================================================
/*
-- 1.1
SELECT * FROM Planets;

-- 1.2
SELECT Name, Sector FROM Planets;

-- 1.3
SELECT * FROM Planets WHERE Sector = 'Sol';

-- 1.4
SELECT * FROM Planets WHERE Population > 1000000000 ORDER BY Population DESC;

-- 1.5
SELECT * FROM Planets WHERE Name LIKE 'M%';
*/

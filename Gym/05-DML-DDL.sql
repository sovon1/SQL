-- =============================================================
-- Module 05: DML & DDL
-- =============================================================

-- -------------------------------------------------------------
-- Exercise 5.1: New World
-- -------------------------------------------------------------
-- Goal: Create a new table named 'Robots' with columns:
-- ID (INT, Primary Key), Model (NVARCHAR), IsActive (BIT).

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 5.2: Production
-- -------------------------------------------------------------
-- Goal: Insert 3 rows into Robots.

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 5.3: Recall
-- -------------------------------------------------------------
-- Goal: Update all robots to set IsActive = 0 where Model is 'T-800'.

-- Write your query below:



-- =============================================================
-- SOLUTIONS
-- =============================================================
/*
-- 5.1
CREATE TABLE Robots (
    ID INT PRIMARY KEY,
    Model NVARCHAR(50),
    IsActive BIT
);

-- 5.2
INSERT INTO Robots (ID, Model, IsActive) VALUES
(1, 'R2-D2', 1),
(2, 'C-3PO', 1),
(3, 'T-800', 1);

-- 5.3
UPDATE Robots SET IsActive = 0 WHERE Model = 'T-800';
*/

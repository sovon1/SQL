-- =============================================================
-- Module 06: Programmability
-- =============================================================

-- -------------------------------------------------------------
-- Exercise 6.1: Fuel Calculator (Procedure)
-- -------------------------------------------------------------
-- Goal: Create a Procedure 'CalcFuel' that takes @Distance INT and prints the fuel needed (Distance * 5).

-- Write your query below:



-- -------------------------------------------------------------
-- Exercise 6.2: Safety Check (Function)
-- -------------------------------------------------------------
-- Goal: Create a Function 'IsSafe' that returns 'Yes' if HazardLevel < 5, else 'No'.

-- Write your query below:



-- =============================================================
-- SOLUTIONS
-- =============================================================
/*
-- 6.1
CREATE PROCEDURE CalcFuel @Distance INT
AS
BEGIN
    PRINT @Distance * 5;
END;

-- 6.2
CREATE FUNCTION IsSafe(@Level INT)
RETURNS NVARCHAR(3)
AS
BEGIN
    IF @Level < 5 RETURN 'Yes';
    RETURN 'No';
END;
*/

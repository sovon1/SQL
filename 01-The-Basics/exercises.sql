-- Use this file to write your answers for Module 01

USE SQLUniverse;
GO

-- Exercise 01-01
IF OBJECT_ID('Answer_01_01', 'V') IS NOT NULL DROP VIEW Answer_01_01;
GO
CREATE VIEW Answer_01_01 AS
SELECT * FROM Planets; -- Replace with your query
GO

EXEC Check_Answer '01-01';


-- Exercise 01-02
-- ... write here

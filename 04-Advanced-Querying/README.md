# Module 04: Advanced Querying

Bending space and time with Window Functions, Subqueries, and CTEs.

## 📚 Theory

### 1. Window Functions
Perform calculations across a set of table rows.
```sql
SELECT Name,
       ROW_NUMBER() OVER (ORDER BY Population DESC) as Rank
FROM Planets;
```

### 2. Subqueries
A query nested inside another query.
```sql
SELECT * FROM Crew
WHERE BasePlanetID IN (SELECT PlanetID FROM Planets WHERE Sector = 'Sol');
```

### 3. Common Table Expressions (CTEs)
A temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement. It makes code readable.
```sql
WITH HighPopPlanets AS (
    SELECT PlanetID, Name FROM Planets WHERE Population > 1000000000
)
SELECT * FROM Crew
WHERE BasePlanetID IN (SELECT PlanetID FROM HighPopPlanets);
```

---

## 📝 Exercises

### Exercise 04-01: The Race (Window Functions)
Rank all spacecrafts by their `MaxSpeed`.
1.  Select `Name`, `MaxSpeed`.
2.  Use `RANK() OVER (ORDER BY MaxSpeed DESC)` as `SpeedRank`.
3.  Create view `Answer_04_01`.
4.  Check: `EXEC Check_Answer '04-01'`

### Exercise 04-02: Loading Dock (Window Functions)
Calculate a running total of cargo weight for each mission.
1.  Select `MissionID`, `ItemName`, `WeightKG`.
2.  Use `SUM(WeightKG) OVER (PARTITION BY MissionID ORDER BY ItemName)` as `RunningTotal`.
3.  Create view `Answer_04_02`.
4.  Check: `EXEC Check_Answer '04-02'`

### Exercise 04-03: Above Average (Subquery)
Find all planets that have a population higher than the average population of all planets.
1.  Calculate the average population using a subquery.
2.  Select all from `Planets` where `Population >` that subquery.
3.  Create view `Answer_04_03`.
4.  Check: `EXEC Check_Answer '04-03'`

### Exercise 04-04: Heavy Missions (CTE)
Use a CTE to identify missions carrying more than 5,000 KG of cargo.
1.  Define a CTE named `MissionWeights` that groups by `MissionID` and sums `WeightKG`.
2.  Select `MissionName` and `TotalWeight`.
3.  Join `Missions` with the CTE.
4.  Filter where `TotalWeight > 5000`.
5.  Create view `Answer_04_04`.
6.  Check: `EXEC Check_Answer '04-04'`

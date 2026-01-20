# Module 02: Joins & Relationships

Alone, data is isolated. Together, it tells a story.

## 📚 Theory

### 1. INNER JOIN
Combines rows from two tables where the joining condition is met.
```sql
SELECT Crew.FirstName, Planets.Name
FROM Crew
INNER JOIN Planets ON Crew.BasePlanetID = Planets.PlanetID;
```

### 2. LEFT JOIN
Returns all rows from the *left* table, and matched rows from the *right*. If no match, NULL.
```sql
SELECT Missions.MissionName, Spacecrafts.Name
FROM Missions
LEFT JOIN Spacecrafts ON Missions.CraftID = Spacecrafts.CraftID;
```

### 3. Aliases
Use aliases to make code cleaner.
```sql
FROM Missions AS M
JOIN Planets AS P ON M.LaunchPlanetID = P.PlanetID
```

---

## 📝 Exercises

### Exercise 02-01: Crew Origins
We need a list of crew members and the name of their home planet.
1.  Select `FirstName`, `LastName` from `Crew`.
2.  Select `Name` (aliased as `PlanetName`) from `Planets`.
3.  Join `Crew` and `Planets` on `BasePlanetID`.
4.  Create view `Answer_02_01`.
5.  Check: `EXEC Check_Answer '02-01'`

### Exercise 02-02: Mission Manifest
List all missions and the name of the ship assigned.
1.  Select `MissionName` and `Spacecrafts.Name` (as `ShipName`).
2.  Use a `LEFT JOIN` starting from `Missions` to `Spacecrafts` (in case a mission has no ship yet).
3.  Create view `Answer_02_02`.
4.  Check: `EXEC Check_Answer '02-02'`

### Exercise 02-03: Local Flights
Find missions where the Launch Planet is the **same** as the Destination Planet.
1.  Select `MissionName` and the Planet Name.
2.  Join properly.
3.  Filter where `LaunchPlanetID` equals `DestinationPlanetID`.
4.  Create view `Answer_02_03`.
5.  Check: `EXEC Check_Answer '02-03'`

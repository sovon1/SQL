# Module 03: Aggregation

Summarizing the universe.

## 📚 Theory

### 1. Aggregate Functions
*   `COUNT(*)`: Count rows.
*   `SUM(Col)`: Sum values.
*   `AVG(Col)`: Average.
*   `MAX(Col)` / `MIN(Col)`.

### 2. GROUP BY
Groups rows that have the same values into summary rows.
```sql
SELECT Sector, COUNT(*)
FROM Planets
GROUP BY Sector;
```

### 3. HAVING
Filters *groups* (unlike WHERE which filters rows).
```sql
SELECT Sector, COUNT(*)
FROM Planets
GROUP BY Sector
HAVING COUNT(*) > 1;
```

---

## 📝 Exercises

### Exercise 03-01: Planet Demographics
How many crew members are from each planet?
1.  Select Planet `Name` and count of crew (`CrewCount`).
2.  Use `LEFT JOIN` (to see planets with 0 crew).
3.  Group by Planet Name.
4.  Create view `Answer_03_01`.
5.  Check: `EXEC Check_Answer '03-01'`

### Exercise 03-02: Heavy Lifting
Calculate the total weight of cargo for each mission.
1.  Select `MissionID` and Sum of `WeightKG` (`TotalWeight`).
2.  Group by `MissionID`.
3.  Create view `Answer_03_02`.
4.  Check: `EXEC Check_Answer '03-02'`

### Exercise 03-03: High Value Shipments
Find missions where the total value of cargo exceeds 10,000 Credits.
1.  Select `MissionID` and Sum of `ValueCredits`.
2.  Group by `MissionID`.
3.  Use `HAVING` to filter sums > 10000.
4.  Create view `Answer_03_03`.
5.  Check: `EXEC Check_Answer '03-03'`

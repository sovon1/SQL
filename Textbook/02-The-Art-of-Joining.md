# Chapter 02: The Art of Joining

**"No table is an island."**

Real power comes from combining data from multiple tables.

## 2.1 The Concept
Imagine you have `Crew` and `Planets`.
*   `Crew` has a `HomePlanetID`.
*   `Planets` has `PlanetID` and `PlanetName`.

To get a list of Crew Names and their Planet Names, we "Join" them.

## 2.2 Join Types (Visualized)

### INNER JOIN
*   **Definition:** Only rows where there is a match in **BOTH** tables.
*   **Analogy:** The intersection of a Venn Diagram.
*   **Use Case:** List only crew members who have an assigned planet. (Crew without planets are hidden; Planets with no crew are hidden).

### LEFT JOIN (Outer Join)
*   **Definition:** All rows from the **LEFT** table, and matching rows from the **RIGHT**. If no match, the right side is `NULL`.
*   **Analogy:** The entire Left circle of a Venn Diagram.
*   **Use Case:** List ALL crew members, even if they don't have a planet.

### RIGHT JOIN
*   **Definition:** Opposite of Left Join. All rows from Right.
*   **Use Case:** Rare. usually rewritten as a LEFT JOIN.

### FULL OUTER JOIN
*   **Definition:** Everything. Rows from Left, rows from Right. Matches are aligned; non-matches have NULLs.
*   **Use Case:** Report on everything in the system, unmatched or not.

### CROSS JOIN (Cartesian Product)
*   **Definition:** Every row in Table A combined with Every row in Table B.
*   **Math:** 10 rows x 10 rows = 100 rows.
*   **Use Case:** Generating combinations (e.g., "List every possible matchup of Teams").

## 2.3 Syntax
```sql
SELECT C.Name, P.PlanetName
FROM Crew AS C
INNER JOIN Planets AS P ON C.HomePlanetID = P.PlanetID;
```
*   **ON**: The logic that glues rows together.

## 2.4 Deep Dive: Self-Joins
A table joining to itself.
*   **Scenario:** An `Employees` table has a `ManagerID` column. `ManagerID` is actually just an `EmployeeID`.
*   **Query:**
    ```sql
    SELECT E.Name AS Employee, M.Name AS Manager
    FROM Employees E
    LEFT JOIN Employees M ON E.ManagerID = M.EmployeeID;
    ```

---
**[Go to Exercises](../Gym/02-Joins.sql)**

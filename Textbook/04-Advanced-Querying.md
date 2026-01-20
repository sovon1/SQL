# Chapter 04: Advanced Querying

**"The tools of the professional."**

## 4.1 Window Functions
Calculations across a specific set of rows related to the current row, without collapsing them.

### Syntax
```sql
FUNC() OVER (PARTITION BY Col1 ORDER BY Col2 ROWS ...)
```

### Ranking
*   `ROW_NUMBER()`: Unique sequential number (1, 2, 3, 4).
*   `RANK()`: Handles ties with gaps (1, 2, 2, 4).
*   `DENSE_RANK()`: Handles ties without gaps (1, 2, 2, 3).

### Framing (ROWS vs RANGE)
Defining the "Window" precisely.
*   `ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW`: Running total from start to now.
*   `ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING`: Moving average of neighbors.

## 4.2 Common Table Expressions (CTEs)
Named temporary result sets. Cleaner than subqueries.

### Recursive CTEs
Used for hierarchical data (e.g., Organization Charts, Parts Lists).
```sql
WITH Hierarchy AS (
    -- Anchor (The top level)
    SELECT ID, Name, ManagerID, 0 as Level
    FROM Employees WHERE ManagerID IS NULL

    UNION ALL

    -- Recursive Member
    SELECT E.ID, E.Name, E.ManagerID, H.Level + 1
    FROM Employees E
    INNER JOIN Hierarchy H ON E.ManagerID = H.ID
)
SELECT * FROM Hierarchy;
```

## 4.3 Subqueries
*   **Scalar Subquery:** Returns one value. Can be used in SELECT list.
*   **Correlated Subquery:** The inner query references the outer query. Runs once per row (Slow!).
    ```sql
    SELECT Name
    FROM Planets P
    WHERE Population > (SELECT AVG(Population) FROM Planets P2 WHERE P2.Sector = P.Sector);
    ```

---
**[Go to Exercises](../Gym/04-Advanced.sql)**

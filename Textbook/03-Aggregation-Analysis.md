# Chapter 03: Aggregation & Analysis

**"Making sense of the chaos."**

## 3.1 Aggregate Functions
Functions that take many rows and return one value.
*   `COUNT(*)`: Counts rows.
*   `COUNT(Column)`: Counts non-NULL values in that column.
*   `SUM()`, `AVG()`, `MIN()`, `MAX()`.

## 3.2 GROUP BY
Collapse many rows into buckets.
```sql
SELECT Sector, COUNT(*)
FROM Planets
GROUP BY Sector;
```
*   **Rule:** If a column is in the `SELECT` list, it MUST be in an aggregate function OR in the `GROUP BY` clause.

## 3.3 HAVING vs WHERE
*   **WHERE**: Filters **Rows** (Before grouping).
*   **HAVING**: Filters **Groups** (After grouping).

**Example:**
*   `WHERE Population > 1000`: "I only care about big planets." (Row filter)
*   `HAVING COUNT(*) > 5`: "I only care about Sectors with more than 5 planets." (Group filter)

## 3.4 Advanced Aggregation (SQL Server Specifics)
### ROLLUP
Generates subtotals and grand totals.
```sql
SELECT Sector, Climate, COUNT(*)
FROM Planets
GROUP BY ROLLUP (Sector, Climate);
```
This produces rows for:
1.  (Sector, Climate)
2.  (Sector, NULL) -> Subtotal for Sector
3.  (NULL, NULL) -> Grand Total

### CUBE
Generates subtotals for ALL combinations.
1.  (Sector, Climate)
2.  (Sector, NULL)
3.  (NULL, Climate)
4.  (NULL, NULL)

---
**[Go to Exercises](../Gym/03-Aggregation.sql)**

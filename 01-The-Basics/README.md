# Module 01: The Basics (Retrieval & Filtering)

Welcome to the Academy, Cadet. Your first task is to learn how to access the Federation's database.

## 📚 Theory

### 1. The `SELECT` Statement
The most fundamental command in SQL. It retrieves data from a table.
```sql
SELECT Column1, Column2 FROM TableName;
```
To get *everything*, use the wildcard `*`:
```sql
SELECT * FROM TableName;
```

### 2. The `WHERE` Clause (Filtering)
We rarely want *all* the data. We use `WHERE` to filter rows.
```sql
SELECT * FROM Crew WHERE Rank = 'Captain';
```
Operators: `=`, `<>`, `>`, `<`, `>=`, `<=`, `AND`, `OR`.

### 3. `ORDER BY` and `TOP`
Sort your results.
```sql
SELECT * FROM Cargo ORDER BY ValueCredits DESC;
```
Limit your results.
```sql
SELECT TOP 5 * FROM Cargo ORDER BY ValueCredits DESC;
```
*Pro Tip: You cannot usually use `ORDER BY` inside a View unless you also use `TOP`.*

---

## 📝 Exercises

Open your SQL editor and connect to the `SQLUniverse` database.

**Instructions:**
For each exercise, write your query. To verify it, create a view named `Answer_XX_XX` and run the checker.

### Exercise 01-01: The Full Map
Retrieve all details for all **Planets**.
1.  Write a query to select all columns from the `Planets` table.
2.  Wrap it in a view:
    ```sql
    CREATE VIEW Answer_01_01 AS
    -- Your Query Here
    SELECT ...
    ```
3.  Check: `EXEC Check_Answer '01-01'`

### Exercise 01-02: Navigation Data
We only need the names and sectors of planets for the nav computer.
1.  Select `Name` and `Sector` columns from `Planets`.
2.  Create view `Answer_01_02`.
3.  Check: `EXEC Check_Answer '01-02'`

### Exercise 01-03: The Home System
Find all planets located in the **'Sol'** sector.
1.  Select all columns from `Planets`.
2.  Filter where `Sector` is 'Sol'.
3.  Create view `Answer_01_03`.
4.  Check: `EXEC Check_Answer '01-03'`

### Exercise 01-04: High Population
Find planets with a population greater than **1 Billion** (1,000,000,000).
1.  Select all columns from `Planets`.
2.  Filter `Population > 1000000000`.
3.  Create view `Answer_01_04`.
4.  Check: `EXEC Check_Answer '01-04'`

### Exercise 01-05: The Fastest Fleet
List the **Top 3** spacecrafts with the highest `MaxSpeed`.
1.  Select all from `Spacecrafts`.
2.  Order by `MaxSpeed` DESC.
3.  Limit results to `TOP 3`.
4.  Create view `Answer_01_05`.
5.  Check: `EXEC Check_Answer '01-05'`

---
*Next: [Module 02 - Joins](../02-Joins/)*

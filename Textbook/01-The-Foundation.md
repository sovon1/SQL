# Chapter 01: The Foundation (Retrieval & Filtering)

**"Data is just noise until you ask the right question."**

## 1.1 The Relational Model
Before we write code, we must understand where data lives.
*   **Database:** A collection of organized data.
*   **Table:** A grid of rows and columns (like a spreadsheet).
*   **Row (Record):** A single item (e.g., One Planet).
*   **Column (Field):** An attribute of that item (e.g., Planet Name).
*   **Primary Key (PK):** A unique ID for every row.
*   **Foreign Key (FK):** A link to another table's PK.

## 1.2 The SELECT Statement
The `SELECT` statement is how we read data. It is the most used command in SQL.

### Syntax
```sql
SELECT Column1, Column2
FROM TableName;
```

### The Order of Execution (Crucial!)
SQL is declarative. You tell the DB *what* you want, not *how* to get it. However, the server processes it in a specific order:
1.  **FROM**: Find the table.
2.  **WHERE**: Filter the rows.
3.  **GROUP BY**: Group rows.
4.  **HAVING**: Filter groups.
5.  **SELECT**: Return the columns.
6.  **ORDER BY**: Sort the final result.

*Knowing this solves 90% of beginner bugs.*

## 1.3 Filtering with WHERE
We usually only want specific data.

### Operators
*   `=`: Exact match.
*   `<>` or `!=`: Not equal.
*   `>` / `<`: Greater/Less than.
*   `BETWEEN a AND b`: Inclusive range.
*   `IN (a, b, c)`: Matches any value in the list.
*   `LIKE`: Pattern matching.
    *   `%`: Any sequence of characters. `LIKE 'Star%'` matches "Star Wars", "Start".
    *   `_`: Single character. `LIKE 'A_B'` matches "AAB", "AXB".

### Dealing with NULL
**NULL is not zero. NULL is "Unknown".**
*   `WHERE Column = NULL` will **always fail**.
*   Correct: `WHERE Column IS NULL` or `WHERE Column IS NOT NULL`.

## 1.4 Sorting with ORDER BY
*   `ASC`: Ascending (Default). 1, 2, 3... A, B, C...
*   `DESC`: Descending. 9, 8, 7... Z, Y, X...

## 1.5 Edge Cases & Tips
*   **Case Sensitivity:** SQL Server is usually case-insensitive by default (depending on collation), but it's good practice to treat text as sensitive.
*   **The Wildcard `*`:** `SELECT *` is great for testing, but bad for production apps (performance, bandwidth). Always list your columns in real code.

---
**[Go to Exercises](../Gym/01-Basics.sql)**

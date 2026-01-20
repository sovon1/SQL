# Chapter 05: Data Manipulation (DML) & Definition (DDL)

**"The Architect's Blueprint."**

## 5.1 Data Types (SQL Server)
Choosing the right type is critical for performance.
*   **Integers:** `INT`, `BIGINT`, `SMALLINT`, `TINYINT`.
*   **Decimals:** `DECIMAL(10,2)` (Exact), `FLOAT` (Approximate).
*   **Text:**
    *   `CHAR(10)`: Fixed length (Always 10 chars).
    *   `VARCHAR(100)`: Variable length.
    *   `NVARCHAR(100)`: Unicode (Supports Chinese, Emojis, etc).
*   **Dates:** `DATE`, `DATETIME`, `DATETIME2` (More precise).

## 5.2 Constraints (Data Integrity)
Rules that the DB enforces.
1.  **PRIMARY KEY:** Uniquely identifies rows. (Not Null + Unique).
2.  **FOREIGN KEY:** Enforces relationships. Cannot insert a Cargo for a Mission that doesn't exist.
3.  **UNIQUE:** No duplicates allowed.
4.  **CHECK:** Logic check. `CHECK (Age >= 18)`.
5.  **DEFAULT:** Fallback value. `DEFAULT GETDATE()`.

## 5.3 Transactions (ACID)
A group of operations that pass or fail as a whole.
*   **A**tomicity: All or nothing.
*   **C**onsistency: Data remains valid.
*   **I**solation: Transactions don't interfere.
*   **D**urability: Saved forever once committed.

```sql
BEGIN TRANSACTION;
  UPDATE Accounts SET Balance = Balance - 100 WHERE ID = 1;
  UPDATE Accounts SET Balance = Balance + 100 WHERE ID = 2;
COMMIT; -- Or ROLLBACK;
```

---
**[Go to Exercises](../Gym/05-DML-DDL.sql)**

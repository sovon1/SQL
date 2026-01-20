# Module 07: Performance & Admin (The Supreme Architect)

With great power comes great responsibility (and query optimization).

## 📚 Theory

### 1. Indexes
Indexes speed up retrieval but slow down insertion.
*   **Clustered Index**: Sorts the physical data rows (usually the Primary Key). Only one per table.
*   **Non-Clustered Index**: A separate structure pointing to the data. Many allowed.

```sql
CREATE INDEX IX_Planets_Sector ON Planets(Sector);
```

### 2. Execution Plans
How the SQL Server decides to run your query.
*   **Table Scan**: Looking at every row (Slow for big tables).
*   **Index Seek**: Jumping directly to the data (Fast).

### 3. Security
*   **Logins**: Authentication (Who are you?).
*   **Users**: Authorization (What can you do in this DB?).
*   **Roles**: Groups of permissions (e.g., `db_datareader`).

---

## 📝 Exercises

### Exercise 07-01: Speed It Up
1.  Run `SELECT * FROM ShipmentLogs WHERE MissionID = 5`.
2.  Enable "Include Actual Execution Plan" in your editor (or use `SET STATISTICS IO ON`).
3.  Note the cost.
4.  Create an index: `CREATE INDEX IX_Logs_Mission ON ShipmentLogs(MissionID)`.
5.  Run the query again. Did it change from a "Clustered Index Scan" to an "Index Seek"?

### Exercise 07-02: Secure the Bridge
1.  Create a new Login named 'CadetUser' with password 'Password123!'.
2.  Create a User for that login in `SQLUniverse`.
3.  Grant them `SELECT` permission on `Planets` only.
4.  Try to select from `Missions` as that user. It should fail.

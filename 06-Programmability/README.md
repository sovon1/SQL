# Module 06: Programmability (The Commander)

Taking control of the flow.

## 📚 Theory

### 1. Variables & Flow
```sql
DECLARE @MyVar INT = 10;
IF @MyVar > 5 PRINT 'Big';
```

### 2. Stored Procedures
Reusable blocks of code.
```sql
CREATE PROCEDURE GetPlanetInfo @PlanetID INT AS
SELECT * FROM Planets WHERE PlanetID = @PlanetID;
```

### 3. User-Defined Functions (UDFs)
Return a value or a table.
*   **Scalar Function**: Returns a single value.
    ```sql
    CREATE FUNCTION dbo.AddNumbers(@A INT, @B INT)
    RETURNS INT
    AS
    BEGIN
        RETURN @A + @B;
    END
    ```

### 4. Triggers
Code that runs automatically in response to events (INSERT, UPDATE, DELETE).
```sql
CREATE TRIGGER trg_AfterInsert ON Planets
AFTER INSERT
AS
PRINT 'A new planet was formed!';
```

---

## 📝 Exercises

*Note: These exercises involve creating objects. The `Check_Answer` system is designed for data verification. For these tasks, you will verify manually or by running test scripts.*

### Exercise 06-01: The Calculator (Procedure)
1.  Create a Stored Procedure `CalculateFuel` that accepts `@Distance` (INT) and prints `@Distance * 5`.
2.  Test it: `EXEC CalculateFuel 100`.

### Exercise 06-02: Hazard Rating (Scalar Function)
1.  Create a function `dbo.GetHazardLabel(@Level INT)` that returns NVARCHAR(20).
    *   If Level > 8, return 'Critical'.
    *   If Level > 5, return 'Warning'.
    *   Else return 'Safe'.
2.  Test it: `SELECT ItemName, dbo.GetHazardLabel(HazardLevel) FROM Cargo`.

### Exercise 06-03: Security Alert (Trigger)
1.  Create a trigger `trg_DetectAnomaly` on the `ShipmentLogs` table.
2.  It should fire `AFTER INSERT`.
3.  If the inserted log has `AnomalyDetected = 1`, it should `PRINT 'ALERT: Anomaly in Sector!'`.
4.  Test it: Insert a log entry with `AnomalyDetected = 1` and check the Messages tab.

# Chapter 06: Programmability & Logic

**"Automating the galaxy."**

## 6.1 Variables
Variables hold temporary values.
```sql
DECLARE @MaxSpeed INT;
SET @MaxSpeed = (SELECT MAX(Speed) FROM Ships);
PRINT @MaxSpeed;
```

## 6.2 Stored Procedures
Pre-compiled code. Secure, fast, and reusable.
*   **Parameters:** Inputs (`@ID INT`) and Outputs (`@Result INT OUTPUT`).
*   **Return Values:** Status codes (0 = Success).

## 6.3 User-Defined Functions (UDFs)
*   **Scalar UDF:** Returns one value. Slow if used on thousands of rows.
*   **Table-Valued UDF:** Returns a table. Much faster, acts like a parameterized view.

## 6.4 Triggers
Events that fire automatically.
*   `AFTER INSERT/UPDATE/DELETE`: Runs *after* the action.
*   `INSTEAD OF`: Runs *instead of* the action (useful for Views).

**Warning:** Triggers can be silent killers of performance if complex logic is inside.

---
**[Go to Exercises](../Gym/06-Programmability.sql)**

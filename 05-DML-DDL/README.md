# Module 05: Data Manipulation (DML) & Definition (DDL)

You have analyzed the universe. Now, you must build it.

## 📚 Theory

### 1. DML (Data Manipulation Language)
*   **INSERT**: Add new rows.
    ```sql
    INSERT INTO Planets (Name, Sector) VALUES ('New Earth', 'Alpha');
    ```
*   **UPDATE**: Modify existing rows.
    ```sql
    UPDATE Crew SET Rank = 'Captain' WHERE FirstName = 'Spock';
    ```
*   **DELETE**: Remove rows.
    ```sql
    DELETE FROM Planets WHERE Name = 'Alderaan'; -- Too soon?
    ```

### 2. DDL (Data Definition Language)
*   **CREATE TABLE**: Make new structures.
    ```sql
    CREATE TABLE Robots (
        RobotID INT PRIMARY KEY,
        ModelName NVARCHAR(50),
        IsEvil BIT
    );
    ```
*   **ALTER TABLE**: Change structures.
    ```sql
    ALTER TABLE Robots ADD BatteryLevel INT;
    ```

---

## 📝 Exercises

### Exercise 05-01: Colonization (INSERT)
We discovered a new planet!
1.  Insert a new planet into the `Planets` table.
    *   Name: 'Xenon'
    *   Sector: 'Omega'
    *   Population: 0
    *   Climate: 'Frozen'
    *   IsInhabited: 0
2.  *Verification*: Select the new row and check the data manually. (DML is hard to check with views automatically without resetting the DB).

### Exercise 05-02: Promotion (UPDATE)
'Cadet' crew members have graduated.
1.  Update the `Crew` table.
2.  Set `Rank` to 'Ensign' where `Rank` is currently 'Cadet'.
3.  *Verification*: Run a SELECT to confirm.

### Exercise 05-03: Space Junk (DELETE)
Remove failed missions from the log.
1.  Delete from `Missions` where `Status` is 'Failed'.
2.  *Warning*: This might fail if there are Foreign Keys in `Cargo`! You might need to delete the cargo first. This is a lesson in Referential Integrity.

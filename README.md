# 🌌 The Ultimate SQL Universe Repository

Welcome to the **greatest SQL learning repository in the universe**.

This isn't just a tutorial. It's a journey from "Zero" to "Very, Very Pro" in **Microsoft SQL Server (T-SQL)**. You will be hired by the **InterGalactic Logistics Corp** to manage their massive database of planets, spacecraft, missions, and cargo.

## 🚀 How to Start

### Prerequisites
1.  **Docker Desktop** installed.
2.  A SQL Client (e.g., [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio/), [DBeaver](https://dbeaver.io/), or SSMS).

### Quick Setup
1.  Open your terminal in this folder.
2.  Run the universe:
    ```bash
    docker-compose up -d
    ```
3.  Connect your SQL Client:
    *   **Server:** `localhost` (or `localhost,1433`)
    *   **User:** `sa`
    *   **Password:** `YourStrong!Password123`
    *   **Database:** `SQLUniverse`

## 🗺️ The Curriculum

We follow a linear path, but you can jump around if you are already a pilot.

### 🐣 Phase 1: The Cadet (Fundamentals)
*   **[01 - The Basics](./01-The-Basics/):** Retrieval, Filtering, Sorting.
*   **[02 - Relationships](./02-Joins/):** Joins, Unions.
*   **[03 - Aggregation](./03-Aggregation/):** Group By, Summarizing data.

### 🧑‍🚀 Phase 2: The Pilot (Advanced Querying)
*   **[04 - Advanced Querying](./04-Advanced-Querying/):** Window Functions, CTEs, Subqueries.
*   **[05 - Modification](./05-DML-DDL/):** Inserting, Updating, Creating Tables.

### 🦸 Phase 3: The Commander (Programmability)
*   **[06 - Programmability](./06-Programmability/):** Variables, Logic (IF/ELSE), Stored Procedures, Functions.

### 🧙 Phase 4: The Supreme Architect (Pro & Admin)
*   **[07 - Performance & Admin](./07-Performance-Admin/):** Indexes, Execution Plans, Security, Users.

## ✅ How to Check Your Answers

This repository features an **Interactive Check System**.
For every exercise, you will be asked to create a View or Stored Procedure with your answer.

Then, you run:
```sql
EXEC Check_Answer '01-01'; -- Checks Exercise 01 of Module 01
```
The system will tell you if you passed or failed, and hint at why!

---
*Ready to launch? Go to [01 - The Basics](./01-The-Basics/)!*

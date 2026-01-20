# 🌌 The Ultimate SQL Universe

Welcome to the definitive resource for mastering SQL Server. This repository is designed to take you from absolute zero to a professional architect level.

## 📚 The Textbook
The core of this repository is the **Textbook**. These are comprehensive, detailed chapters covering every aspect of SQL Server.
Go to the **[Textbook Folder](./Textbook/)** to start reading.

*   [Chapter 01 - The Foundation](./Textbook/01-The-Foundation.md)
*   [Chapter 02 - The Art of Joining](./Textbook/02-The-Art-of-Joining.md)
*   [Chapter 03 - Aggregation & Analysis](./Textbook/03-Aggregation-Analysis.md)
*   ...and more.

## 🏋️ The Gym (Exercises)
Theory is nothing without practice. The **Gym** contains raw SQL files for you to practice what you learned.
Go to the **[Gym Folder](./Gym/)**.

### How to use the Gym
You have two options:
1.  **Bring Your Own Database:** If you already have SQL Server installed, just run the scripts.
2.  **Use the Docker Setup:** If you want a pre-made environment, we provide a `docker-compose.yml` in the Gym folder.

## 🚀 Quick Setup
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
*   **[01 - The Basics](./Textbook/01-The-Foundation.md)**: Retrieval, Filtering, Sorting.
*   **[02 - Relationships](./Textbook/02-The-Art-of-Joining.md)**: Joins, Unions.
*   **[03 - Aggregation](./Textbook/03-Aggregation-Analysis.md)**: Group By, Summarizing data.

### 🧑‍🚀 Phase 2: The Pilot (Advanced Querying)
*   **[04 - Advanced Querying](./Textbook/04-Advanced-Querying.md)**: Window Functions, CTEs, Subqueries.
*   **[05 - Modification](./Textbook/05-DML-DDL.md)**: Inserting, Updating, Creating Tables.

### 🦸 Phase 3: The Commander (Programmability)
*   **[06 - Programmability](./Textbook/06-Programmability.md)**: Variables, Logic (IF/ELSE), Stored Procedures, Functions.

### 🧙 Phase 4: The Supreme Architect (Pro & Admin)
*   **[07 - Performance & Admin](./Textbook/07-Performance-Admin.md)**: Indexes, Execution Plans, Security, Users.

## ✅ How to Check Your Answers
This repository features an **Interactive Check System**.
For every exercise, you will be asked to create a View or Stored Procedure with your answer.

Then, you run:
```sql
EXEC Check_Answer '01-01'; -- Checks Exercise 01 of Module 01
```
The system will tell you if you passed or failed, and hint at why!

---
*Start your journey by reading [Chapter 01](./Textbook/01-The-Foundation.md).*
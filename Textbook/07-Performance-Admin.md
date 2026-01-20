# Chapter 07: Performance & Admin

**"The Engine Room."**

## 7.1 Indexing: The Key to Speed
A book index allows you to find a page without reading every page.
*   **Clustered Index:** The physical order of the data. The book itself. (Only 1 per table).
*   **Non-Clustered Index:** A separate list pointing to the data. (Many allowed).

**SARGable Queries:** Search ARGument Able. Writing queries that *can* use indexes.
*   Bad: `WHERE YEAR(OrderDate) = 2023` (Function on column kills index).
*   Good: `WHERE OrderDate >= '2023-01-01' AND OrderDate < '2024-01-01'`.

## 7.2 Execution Plans
The map the server follows.
*   **Seek:** Good. Pinpoint lookup.
*   **Scan:** Bad (usually). Reading everything.
*   **Lookup:** Key Lookup means the index covered filtering but not the SELECT list, so it had to jump back to the table.

## 7.3 Isolation Levels (Dirty Reads)
*   `READ COMMITTED`: Default. Blocks if someone is writing.
*   `READ UNCOMMITTED` (`NOLOCK`): Fast, but you might read data that is being rolled back.

---
**[Go to Exercises](../Gym/07-Admin.sql)**

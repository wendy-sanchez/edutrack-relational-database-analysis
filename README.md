# EduTrack — Relational Database Analysis

A SQL database analysis project focused on relational data modeling, multi-table queries, and data integrity auditing using PostgreSQL and Supabase.

## Overview

This project is the second stage of the EduTrack database auditing exercise. It explores a normalized relational database schema in which student records, courses, and enrollments are stored in three separate tables connected through foreign keys.

The goal is to answer operational and business questions that require combining information from multiple tables, while checking the consistency and integrity of relational data.

## Database Structure

The database consists of three main relational tables:

| Table | Description |
|---|---|
| `students` | Stores student information, including names and email addresses. |
| `courses` | Stores course information, including titles, categories, instructors, and monthly fees. |
| `enrollments` | Connects students with courses and stores enrollment progress and completion status. |

The relationships are implemented through foreign keys:

- A student can have multiple enrollments.
- A course can have multiple enrollments.
- Each enrollment references an existing student and course.

An Entity-Relationship Diagram (ERD) is included to illustrate the database structure.

## SQL Analysis

The project includes 10 SQL queries organized around operational and analytical questions.

### 1. Enrollment Overview
- Retrieve all enrollments with student names, course titles, and completion percentages.
- Identify students who have passed at least one course.

### 2. Student and Course Analysis
- Calculate average completion percentages by instructor.
- Identify students without any enrollments.
- Identify courses without any enrollments.
- Find students enrolled in more than one course.

### 3. Revenue and Enrollment Metrics
- Calculate monthly fee totals by course category based on current course prices and enrollments.
- Count distinct enrolled students by instructor.

### 4. Referential Integrity Checks
- Identify enrollments referencing non-existent students.
- Identify enrollments referencing non-existent courses.

## SQL Concepts Applied

- `INNER JOIN` — Combine related records across multiple tables.
- `LEFT JOIN` — Identify records without matching relationships.
- `GROUP BY` — Aggregate information by instructor, student, or category.
- `HAVING` — Filter grouped results.
- `COUNT` and `COUNT(DISTINCT)` — Calculate enrollment metrics.
- `AVG` — Calculate average course completion.
- `SUM` — Aggregate monthly course fees.
- Foreign keys and referential integrity.

## Key Findings

The analysis produced the following results from the dataset:

| Metric | Result |
|---|---:|
| Total enrollments | 16 |
| Students enrolled in multiple courses | 7 |
| Students without enrollments | 1 |
| Courses without enrollments | 1 |
| Successful course enrollments | 6 |
| Orphan enrollments referencing missing students | 0 |
| Orphan enrollments referencing missing courses | 0 |

### Average Completion by Instructor

| Instructor | Average completion |
|---|---:|
| Marta López | 66.14% |
| Carlos Vega | 40.00% |
| Lucia Prades | 36.50% |
| Pending assignment | 0.00% |

### Monthly Fee Totals by Category

| Category | Total |
|---|---:|
| Programming | 409.93 |
| Data | 179.97 |
| Design | 169.96 |
| Marketing | 59.98 |

These financial figures are calculated from the current monthly course fees associated with enrollments; they represent query-based estimates rather than verified payments.

## Tools and Technologies

- **SQL** — Relational database querying and analysis.
- **PostgreSQL** — Relational database management system.
- **Supabase** — Database hosting and SQL execution environment.
- **Entity-Relationship Diagram (ERD)** — Visual representation of relational structure.

## Repository Structure

```text
.
├── queries.sql
├── analysis_report.md
├── diagram.png
├── Comprobación courses.png
├── Comprobación enrollments.png
├── Comprobación students.png
└── Ejecución exitosa de base de datos.png
```

| File | Description |
|---|---|
| `queries.sql` | Contains the 10 SQL queries used in the analysis. |
| `analysis_report.md` | Documents query results and findings. |
| `diagram.png` | Entity-Relationship Diagram of the three database tables. |
| Screenshots | Evidence of database execution and initial table checks in Supabase. |

## How to Reproduce the Analysis

1. Open the Supabase project containing the normalized EduTrack database.
2. Access the SQL Editor.
3. Open and execute the queries from `queries.sql`.
4. Compare the results with the documented findings in `analysis_report.md`.

The database schema and source data must already be available in Supabase before executing the queries.

## Learning Outcomes

This project demonstrates practical skills in:

- Working with normalized relational database structures.
- Understanding relationships between entities.
- Writing multi-table SQL queries.
- Applying joins to retrieve related information.
- Performing aggregations and grouped analysis.
- Identifying missing relationships and validating referential integrity.
- Translating operational questions into SQL queries.
- Documenting analytical results.

## Project Status

Completed database analysis exercise using a normalized relational schema, with 10 SQL queries, an entity-relationship diagram, and a documented results report.

---

**Developer Wendy Sanchez**

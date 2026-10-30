# Animal Shelter SQL Analysis

A hands-on SQL practice project built while working through a 90-day data analysis learning plan. It uses a small, made-up animal shelter dataset (10 animals, SQLite) to practise answering business-style questions with SQL.

## What's inside

- `shelter_questions.sql` - table setup plus every query, each with a comment stating the question it answers.

## Skills practised so far

| Lesson | Topics |
|---|---|
| 1 | `SELECT`, `WHERE`, `AND` / `OR`, `ORDER BY`, `LIMIT`, `DISTINCT`, handling `NULL` with `IS NULL` |
| 2 | `COUNT`, `AVG`, `GROUP BY`, `HAVING` (and how it differs from `WHERE`) |

## Example questions answered

- How many animals of each type are in the shelter?
- What is the average age of each animal type?
- Which animal types have an average age above 25 months?
- Which animals have no recorded outcome, and why does `!=` silently drop them?

## How to run it

1. Install [DBeaver](https://dbeaver.io/) and create a new SQLite connection.
2. Open `shelter_questions.sql` and run the setup block once.
3. Run each query one at a time.

## Roadmap

- JOINs across more tables (adopters, staff)
- `CASE WHEN`, date and string functions
- Window functions and CTEs
- A written summary of findings for the shelter

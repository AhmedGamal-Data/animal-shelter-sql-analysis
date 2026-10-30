-- ============================================================
-- shelter_questions.sql
-- SQL practice on an Animal Shelter dataset (SQLite).
-- Each query has a comment saying what question it answers.
-- ============================================================

-- ---------- SETUP (run once) ----------
CREATE TABLE animals (
  animal_id INTEGER PRIMARY KEY,
  name TEXT,
  animal_type TEXT,
  intake_date TEXT,
  outcome TEXT,
  age_months INTEGER
);

INSERT INTO animals VALUES
(1,'Bella','Dog','2026-01-05','Adopted',24),
(2,'Milo','Cat','2026-01-09','Adopted',8),
(3,'Rex','Dog','2026-01-15','Transferred',60),
(4,'Luna','Cat','2026-02-02','Adopted',36),
(5,'Max','Dog','2026-02-11',NULL,12),
(6,'Coco','Bird','2026-02-20','Adopted',18),
(7,'Oscar','Cat','2026-03-03','Returned',72),
(8,'Daisy','Dog','2026-03-14','Adopted',6),
(9,'Simba','Cat','2026-03-22',NULL,14),
(10,'Buddy','Dog','2026-04-01','Adopted',48);


-- ============================================================
-- LESSON 1: SELECT, WHERE, ORDER BY, LIMIT, DISTINCT, NULL
-- ============================================================

-- Q1: name and age of all cats
SELECT name, age_months
FROM animals
WHERE animal_type = 'Cat';

-- Q2: all animals that were adopted and are older than 20 months
SELECT *
FROM animals
WHERE outcome = 'Adopted' AND age_months > 20;

-- Q3: the 2 youngest animals
SELECT *
FROM animals
ORDER BY age_months ASC
LIMIT 2;

-- Q4: every animal whose outcome is unknown (NULL)
SELECT *
FROM animals
WHERE outcome IS NULL;

-- Q5: all animals NOT adopted, including the unknown (NULL) ones
-- Note: "!= 'Adopted'" alone would silently drop the NULL rows.
SELECT *
FROM animals
WHERE outcome != 'Adopted'
   OR outcome IS NULL;

-- Q6: the distinct animal types
SELECT DISTINCT animal_type
FROM animals;


-- ============================================================
-- LESSON 2: COUNT, AVG, GROUP BY, HAVING
-- ============================================================

-- Q7: how many animals of each type?
SELECT animal_type, COUNT(*) AS total
FROM animals
GROUP BY animal_type;

-- Q8: average age (in months) of each animal type
SELECT animal_type, AVG(age_months) AS average_age
FROM animals
GROUP BY animal_type;

-- Q9: which animal types have an average age above 25 months?
-- WHERE filters rows before grouping; HAVING filters groups after.
SELECT animal_type, AVG(age_months) AS average_age
FROM animals
GROUP BY animal_type
HAVING AVG(age_months) > 25;

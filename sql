-- 1. Create 'students' table
CREATE TABLE IF NOT EXISTS students (
    id   INT PRIMARY KEY,
    name VARCHAR(50),
    class VARCHAR(10)
);

-- 2. Create 'scores' table
CREATE TABLE IF NOT EXISTS scores (
    id    INT PRIMARY KEY,
    score INT
);

-- 3. Insert minimal sample data into 'students'
INSERT INTO students (id, name, class) VALUES
    (101, 'Ravi', '12C'),
    (102, 'Meena', '12B'),
    (103, 'Karan', '12C');

-- 4. Insert minimal sample data into 'scores'
INSERT INTO scores (id, score) VALUES
    (101, 78),
    (102, 88),
    (104, 69);

-- 5. INNER JOIN: combine only matching rows (students.id = scores.id)
SELECT
    s.id      AS student_id,
    s.name    AS student_name,
    s.class   AS student_class,
    sc.score  AS exam_score
FROM
    students s
    INNER JOIN scores sc ON s.id = sc.id;
-- Expected output rows: (101, 'Ravi', '12C', 78) and (102, 'Meena', '12B', 88)

-- 6. LEFT JOIN: All rows from 'students', and matching from 'scores'
SELECT
    s.id      AS student_id,
    s.name    AS student_name,
    s.class   AS student_class,
    sc.score  AS exam_score
FROM
    students s
    LEFT JOIN scores sc ON s.id = sc.id;
-- Outer rows: (101, 'Ravi', '12C', 78), (102, 'Meena', '12B', 88), (103, 'Karan', '12C', NULL)

-- 7. RIGHT JOIN: All rows from 'scores', and matching from 'students'
SELECT
    s.id      AS student_id,
    s.name    AS student_name,
    s.class   AS student_class,
    sc.score  AS exam_score
FROM
    students s
    RIGHT JOIN scores sc ON s.id = sc.id;

-- 8. FULL OUTER JOIN: MySQL doesn’t support FULL directly; use UNION of LEFT + RIGHT
SELECT
    s.id      AS student_id,
    s.name    AS student_name,
    s.class   AS student_class,
    sc.score  AS exam_score
FROM
    students s
    LEFT JOIN scores sc ON s.id = sc.id

UNION

SELECT
    s.id      AS student_id,
    s.name    AS student_name,
    s.class   AS student_class,
    sc.score  AS exam_score
FROM
    students s
    RIGHT JOIN scores sc ON s.id = sc.id;

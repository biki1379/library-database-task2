CREATE TABLE Students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER DEFAULT 18,
    email TEXT,
    grade REAL
);

INSERT INTO Students (id, name, age, email, grade) VALUES (1, 'Alice', 20, 'alice@example.com', 8.5);
INSERT INTO Students (id, name, email) VALUES (2, 'Bob', 'bob@example.com');  -- age uses default 18
INSERT INTO Students (id, name, age, grade) VALUES (3, 'Charlie', NULL, 7.8);  -- NULL age
INSERT INTO Students (id, name, age, email, grade) VALUES (4, 'Amit', 20, 'amit@example.com', 8.5);
INSERT INTO Students (id, name, email) VALUES (5, 'Bibek', 'bibek@example.com');
INSERT INTO Students (id, name, age, grade) VALUES (6, 'Chayan', NULL, 7.8);

-- 2. UPDATING rows
UPDATE Students SET grade = 9.0 WHERE name = 'Bob';

-- Update multiple rows
UPDATE Students SET grade = 7.0 WHERE grade IS NULL;

-- 3. DELETING rows
DELETE FROM Students WHERE name = 'Charlie';

-- 4. Insert using SELECT
INSERT INTO Students (id, name, age, email, grade)
SELECT '7', 'David', 22, 'david@example.com', 9.2;


START TRANSACTION;
DELETE FROM Students WHERE id = 2;
ROLLBACK;

-- View the table
SELECT *
FROM Students;
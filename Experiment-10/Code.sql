CREATE TABLE students (
    id INT,
    name VARCHAR(50)
);


CREATE OR REPLACE FUNCTION check_unique_id()
RETURNS TRIGGER AS $$
BEGIN
    -- Step 3: Auto-generate ID if NULL
    IF NEW.id IS NULL THEN
        SELECT COALESCE(MAX(id), 0) + 1 INTO NEW.id FROM students;
    END IF;

    -- Step 4: Check for duplicate ID
    IF EXISTS (SELECT 1 FROM students WHERE id = NEW.id) THEN
        RAISE EXCEPTION 'Duplicate ID not allowed!';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER before_insert_students
BEFORE INSERT ON students
FOR EACH ROW
EXECUTE FUNCTION check_unique_id();


INSERT INTO students VALUES (101, 'Krish');   -- Works
INSERT INTO students VALUES (102, 'Rahul');   -- Error
INSERT INTO students VALUES (NULL, 'Aman'); -- Auto-generated IDCREATE TABLE students (
    id INT,
    name VARCHAR(50)
);

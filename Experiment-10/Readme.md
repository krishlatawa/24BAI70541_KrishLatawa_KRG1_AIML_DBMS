# 📘 Experiment 10 - DBMS Trigger for Primary Key Functionality

## 👨‍🎓 Student Details
- **Name:** Krish Latawa  
- **UID:** 24BAI70541  
- **Branch:** CSE - AIML  
- **Section/Group:** 24AIT_KRG G1  
- **Semester:** 4  
- **Date of Performance:** 17/04/2026  
- **Subject Name:** DBMS  
- **Subject Code:** 24CSH-298  

---

## 🎯 Aim
To design a trigger that automatically implements the functionality of a primary key, ensuring unique identification of records without manual intervention.

---

## 💻 Software Requirements

### Database Management System
- Oracle Database Express Edition (Oracle XE)  
- PostgreSQL Database  

### Tools
- Oracle SQL Developer (for Oracle XE)  
- pgAdmin (for PostgreSQL)  

---

## 🎯 Objectives
- To create a database trigger that automatically enforces primary key constraints  
- To generate unique key values automatically  
- To replicate functionality similar to a stored procedure  

---

## 📌 Problem Statement
In enterprise databases, primary keys must be unique for every record. Manual assignment of keys can lead to errors.

### Design a trigger that:
- Automatically generates or enforces a primary key value during insertion  
- Implements logic similar to a stored procedure  
- Demonstrates automated primary key functionality  

**Industry Relevance:** Amazon, Flipkart, Oracle  

---

## 📖 Theory
A trigger can be designed to automatically enforce the functionality of a primary key by ensuring that each record inserted into a table is uniquely identifiable without requiring manual checks. This is achieved by defining a trigger that activates before or after an insert operation and validates whether the incoming data violates uniqueness constraints.

If a duplicate value is detected, the trigger prevents insertion or raises an error, thereby maintaining data integrity. Additionally, triggers can generate unique values dynamically (e.g., using sequences or logic like `MAX(id) + 1`) when a primary key is not provided.

This approach ensures:
- Data consistency  
- No redundancy  
- Unique record identification  

---

## ⚙️ Practical / Experiment Steps
1. Identify the table requiring automated primary key enforcement  
2. Design a trigger that activates before insert operations  
3. Ensure that every new record gets a unique primary key  
4. Validate by inserting multiple records  

---

## 🔬 Procedure
1. **Create the table**  
   Define a table without enforcing a primary key constraint  

2. **Identify the key column**  
   Choose a column (e.g., `id`)  

3. **Write BEFORE INSERT trigger**  
   Create a trigger to run before insertion  

4. **Check for duplicates**  
   Query existing records  

5. **Handle duplicates**  
   Raise an error if duplicate exists  

6. **Auto-generate key (optional)**  
   Use logic like `MAX(id)+1`  

7. **Test the trigger**  
   - Unique values → Accepted  
   - Duplicate values → Rejected  

---

## 💻 Code

```sql
-- Step 1: Create table
CREATE TABLE students (
    id INT,
    name VARCHAR(50)
);

-- Step 2: Create trigger function
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

-- Step 5: Create trigger
CREATE TRIGGER before_insert_students
BEFORE INSERT ON students
FOR EACH ROW
EXECUTE FUNCTION check_unique_id();

-- Step 6: Testing
INSERT INTO students VALUES (101, 'Krish');   -- Works
INSERT INTO students VALUES (102, 'Rahul');   -- Error
INSERT INTO students VALUES (NULL, 'Aman'); -- Auto-generated ID


## 📊 Input / Output Analysis

```sql
-- Step 1: Create table
CREATE TABLE students (
    id INT,
    name VARCHAR(50)
);

OUTPUT:- [](Output-Images/Output-1.png)

-- Step 2: Create trigger function
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

OUTPUT:- [](Output-Images/Output-2.png)
-- Step 5: Create trigger
CREATE TRIGGER before_insert_students
BEFORE INSERT ON students
FOR EACH ROW
EXECUTE FUNCTION check_unique_id();

OUTPUT:- [](Output-Images/Output-3.png)

-- Step 6: Testing
INSERT INTO students VALUES (101, 'Krish');   -- Works
INSERT INTO students VALUES (102, 'Rahul');   -- Error
INSERT INTO students VALUES (NULL, 'Aman'); -- Auto-generated ID

OUTPUT:- [](Output-Images/Output-4.png)

---

## 📚 Learning Outcomes
- Understand the concept of database triggers and their role in enforcing data integrity.
- Learn to implement custom primary key functionality using triggers.
- Gain experience in writing PL/pgSQL functions for PostgreSQL.
- Comprehend error handling in triggers using RAISE EXCEPTION.
- Appreciate the importance of automated key generation in database design.

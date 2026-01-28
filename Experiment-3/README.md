Experiment 3: Basic PL/SQL Block
Name: Krish Latawa
UID: 24BAI70541
Course: BE CSE (AIML)
Subject: DBMS (24CSH-298)
Date: 28 January 2026
Section: KRG-G1

Aim of the Experiment
To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and displaying output using built-in procedures.

Objective
To create a simple PL/SQL program demonstrating the Declaration Section and Execution Section.

Problem Statement
Design and implement a simple PL/SQL program that demonstrates the basic structure of a PL/SQL block. The program should include:


A Declaration Section to define variables


An Execution Section to perform operations using those variables


Output displayed using appropriate statements



PL/SQL Block Structure
Declaration Section (DECLARE)
Variables declared and initialized:


emp_id → Employee ID


emp_name → Employee Name


emp_salary → Employee Salary


Execution Section (BEGIN ... END)


Performs calculations


Displays output using DBMS_OUTPUT.PUT_LINE



Theory
PL/SQL is a block-structured programming language provided by Oracle that allows SQL statements to be combined with procedural constructs. It supports variables, conditional logic, and calculations within a single program unit.
A PL/SQL program is organized into logical blocks:


Declaration Section – Used to define variables and constants


Execution Section – Contains the main logic and computations


Exception Section (Optional) – Handles runtime errors


In this experiment, a basic PL/SQL block initializes employee data, calculates bonus and total salary, and displays the results using output statements.

Software Requirements


Database Management System: Oracle Database


Database Tool: Oracle Live SQL



Procedure


Start the system and open the Oracle database environment.


Write a PL/SQL block beginning with the DECLARE keyword.


Declare variables such as employee ID, employee name, and salary.


Use the BEGIN section to perform calculations like bonus and total salary.


Display output using DBMS_OUTPUT.PUT_LINE.


End the block using END; followed by / to execute it.


Verify the output in the DBMS output panel.



Program Code
DECLARE
    v_emp_id        NUMBER := 99;
    v_emp_name      VARCHAR2(50) := 'Krish Latawa';
    v_basic_salary  NUMBER := 57000;
    v_bonus_amount  NUMBER;
    v_final_salary  NUMBER;

BEGIN
    v_bonus_amount := v_basic_salary * 0.10;
    v_final_salary := v_basic_salary + v_bonus_amount;

    DBMS_OUTPUT.PUT_LINE('Employee Details');
    DBMS_OUTPUT.PUT_LINE('----------------------');
    DBMS_OUTPUT.PUT_LINE('Employee ID          : ' || v_emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name        : ' || v_emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Base Salary : ' || v_basic_salary);
    DBMS_OUTPUT.PUT_LINE('Bonus given (10%)    : ' || v_bonus_amount);
    DBMS_OUTPUT.PUT_LINE('Total Salary         : ' || v_final_salary);
END;
/


Output

<img width="1018" height="390" alt="Experiment-3-Output" src="https://github.com/user-attachments/assets/46f50dd9-064e-4be2-827c-4c610e8e4baa" />


Result
The program executed without errors. Variables were declared in the declaration block, calculations were performed in the execution block, and the output was displayed successfully.

Learning Outcomes


Understand the basic structure of a PL/SQL block (DECLARE, BEGIN, END)


Learn how to declare, initialize, and use variables in PL/SQL


Perform arithmetic operations such as bonus and salary calculation


Use DBMS_OUTPUT.PUT_LINE to display output


Gain practical experience in executing PL/SQL programs in Oracle

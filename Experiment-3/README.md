Experiment 3 : 
1. Aim of the Session-
To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

2. Objective of the Session
To create a simple PL/SQL program demonstrating Declaration Section and Execution Section.

3 . Problem Statement:
Design and implement a simple PL/SQL program that demonstrates the basic structure of a PL/SQL block. The program should include a declaration section to define variables and an execution section to perform operations using those variables and display the results using appropriate output statements.

#Declaration Section (DECLARE)
•	Variables are declared and initialized:
o	emp_id → Employee ID
o	emp_name → Employee Name
o	emp_salary → Employee Salary

# Execution Section (BEGIN ... END)
•	DBMS_OUTPUT.PUT_LINE is used to display output.

4. Theory :
PL/SQL is a block-structured programming language provided by Oracle that allows SQL statements to be combined with procedural constructs. It enables the use of variables, conditional logic, and calculations within a single program unit.
A PL/SQL program is organized into logical blocks. The first part is used for defining required variables and constants. The next part contains the main logic of the program, where operations and calculations are performed. An additional section may be included to manage errors that occur during execution.
In this experiment, a basic PL/SQL block is implemented to initialize employee-related data, perform salary and bonus calculations, and display the computed results using output statements.

5.Software Requirements
•	Database Management System: Oracle Database
•	Database Administration Tool: Oracle Live SQL 

6.Procedure of the Practical:
1.	Start the system and open the Oracle database environment.
2.	Write a PL/SQL block starting with the DECLARE keyword.
3.	Declare variables such as employee ID, employee name, and salary.
4.	Use the BEGIN section to perform calculations like bonus and total salary.
5.	Display the output using DBMS_OUTPUT.PUT_LINE.
6.	End the block using END; followed by / to execute it.
7.	Verify the output displayed in the DBMS output panel.

## Program Code ##
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


8. Output:
The program successfully displays employee details, bonus amount, and total salary using DBMS output.

<img width="1018" height="390" alt="Experiment-3-Output" src="https://github.com/user-attachments/assets/2583ebc6-8bed-4850-9e58-a1a51ef6a812" />



9.Result
The program ran without errors. Variable declarations were made in the declaration block, computations were performed in the execution block, and the output was printed using DBMS_OUTPUT.PUT_LINE.

10.Learning Outcomes
1.	Understand the basic structure of a PL/SQL block including the DECLARE, BEGIN, and END sections.
2.	 Learn how to declare, initialize, and use variables of different data types in PL/SQL.
3.	Perform arithmetic operations in PL/SQL to calculate values such as bonus and total salary.
4.	 Use the DBMS_OUTPUT.PUT_LINE statement to display output from a PL/SQL program.
5.	Gain practical knowledge of executing PL/SQL programs in Oracle and handling common syntax errors.



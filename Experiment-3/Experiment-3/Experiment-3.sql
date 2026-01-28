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

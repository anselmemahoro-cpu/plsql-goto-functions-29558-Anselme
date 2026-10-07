-- Test file for the functions B1 to B4
SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('--- fn_annual_salary ---');
    DBMS_OUTPUT.PUT_LINE('Employee 101: ' || fn_annual_salary(101));
    DBMS_OUTPUT.PUT_LINE('Employee 999 (not found): ' || NVL(TO_CHAR(fn_annual_salary(999)), 'NULL'));

    DBMS_OUTPUT.PUT_LINE('--- fn_years_of_service ---');
    DBMS_OUTPUT.PUT_LINE('Employee 101: ' || fn_years_of_service(101));
    DBMS_OUTPUT.PUT_LINE('Employee 999 (not found): ' || NVL(TO_CHAR(fn_years_of_service(999)), 'NULL'));

    DBMS_OUTPUT.PUT_LINE('--- fn_calculate_tax ---');
    DBMS_OUTPUT.PUT_LINE('Salary 1500: ' || fn_calculate_tax(1500));
    DBMS_OUTPUT.PUT_LINE('Salary 4000: ' || fn_calculate_tax(4000));
    DBMS_OUTPUT.PUT_LINE('Salary 8500: ' || fn_calculate_tax(8500));

    DBMS_OUTPUT.PUT_LINE('--- fn_dept_name ---');
    DBMS_OUTPUT.PUT_LINE('Department 20: ' || fn_dept_name(20));
    DBMS_OUTPUT.PUT_LINE('Department 99 (not found): ' || fn_dept_name(99));
END;
/
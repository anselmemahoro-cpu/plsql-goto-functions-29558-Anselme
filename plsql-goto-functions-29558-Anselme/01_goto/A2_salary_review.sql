-- A2: Salary Review using GOTO
SET SERVEROUTPUT ON;

DECLARE
    v_emp_id NUMBER := 101;     -- try 101, 102, 103
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary
    FROM employees
    WHERE emp_id = v_emp_id;

    IF v_salary < 2000 THEN
        GOTO low_salary;
    ELSIF v_salary < 6000 THEN
        GOTO medium_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': LOW - eligible for a raise');
    GOTO done;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': MEDIUM - keep under review');
    GOTO done;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary ' || v_salary || ': HIGH - no raise needed');

    <<done>>
    NULL;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ' || v_emp_id || ' not found');
END;
/
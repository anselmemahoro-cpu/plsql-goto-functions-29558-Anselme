-- B1: Function to calculate the annual salary of an employee
CREATE OR REPLACE FUNCTION fn_annual_salary (p_emp_id IN NUMBER)
RETURN NUMBER
IS
    v_salary NUMBER;
BEGIN
    SELECT salary INTO v_salary
    FROM employees
    WHERE emp_id = p_emp_id;

    RETURN v_salary * 12;   -- monthly salary x 12 months
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;        -- employee does not exist
END fn_annual_salary;
/
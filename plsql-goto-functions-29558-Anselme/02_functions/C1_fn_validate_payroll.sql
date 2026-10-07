-- C1: Payroll Validator (uses GOTO inside a function)
-- Returns 'VALID' or 'INVALID: <reason>'
CREATE OR REPLACE FUNCTION fn_validate_payroll (p_emp_id IN NUMBER)
RETURN VARCHAR2
IS
    v_salary    employees.salary%TYPE;
    v_hire_date employees.hire_date%TYPE;
    v_dept_id   employees.dept_id%TYPE;
    v_msg       VARCHAR2(100);
BEGIN
    SELECT salary, hire_date, dept_id
    INTO   v_salary, v_hire_date, v_dept_id
    FROM   employees
    WHERE  emp_id = p_emp_id;

    -- Check 1: salary must be greater than 0
    IF v_salary IS NULL OR v_salary <= 0 THEN
        v_msg := 'Salary must be greater than 0';
        GOTO invalid_data;
    END IF;

    -- Check 2: hire date cannot be in the future
    IF v_hire_date > SYSDATE THEN
        v_msg := 'Hire date is in the future';
        GOTO invalid_data;
    END IF;

    -- Check 3: department must exist
    IF fn_dept_name(v_dept_id) = 'Unknown' THEN
        v_msg := 'Department does not exist';
        GOTO invalid_data;
    END IF;

    -- All checks passed
    RETURN 'VALID';

    <<invalid_data>>
    RETURN 'INVALID: ' || v_msg;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'INVALID: Employee not found';
END fn_validate_payroll;
/
-- B3: Function to calculate tax from a salary
-- Rates used: up to 2000 = 0%, up to 5000 = 10%, above 5000 = 20%
CREATE OR REPLACE FUNCTION fn_calculate_tax (p_salary IN NUMBER)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary IS NULL OR p_salary < 0 THEN
        RETURN NULL;                    -- bad input
    ELSIF p_salary <= 2000 THEN
        v_tax := 0;                     -- 0% tax
    ELSIF p_salary <= 5000 THEN
        v_tax := p_salary * 0.10;       -- 10% tax
    ELSE
        v_tax := p_salary * 0.20;       -- 20% tax
    END IF;

    RETURN v_tax;
END fn_calculate_tax;
/
-- A4: Number Classifier rewritten WITHOUT GOTO
-- Same result as A1, but shorter and easier to read.
SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER := 7;     -- change this number to test: 7, -3, 0
BEGIN
    IF v_num > 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num || ' is POSITIVE');
    ELSIF v_num < 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_num || ' is NEGATIVE');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_num || ' is ZERO');
    END IF;
END;
/
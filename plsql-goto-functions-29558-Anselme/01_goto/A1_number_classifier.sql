-- A1: Number Classifier using GOTO
SET SERVEROUTPUT ON;

DECLARE
    v_num NUMBER := 7;     -- change this number to test: 7, -3, 0
BEGIN
    IF v_num > 0 THEN
        GOTO positive_num;
    ELSIF v_num < 0 THEN
        GOTO negative_num;
    ELSE
        GOTO zero_num;
    END IF;

    <<positive_num>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is POSITIVE');
    GOTO finish;

    <<negative_num>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is NEGATIVE');
    GOTO finish;

    <<zero_num>>
    DBMS_OUTPUT.PUT_LINE(v_num || ' is ZERO');

    <<finish>>
    NULL;
END;
/
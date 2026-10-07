-- A3: Illegal GOTO and Fix
SET SERVEROUTPUT ON;

/* ILLEGAL VERSION (kept as a comment so this file runs without error)
   Error: PLS-00375: illegal GOTO statement
   Reason: GOTO cannot jump INTO an IF block. The label is inside the IF.

BEGIN
    GOTO inside_if;

    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside the IF');
    END IF;
END;
/
*/

-- FIXED VERSION: the label is outside the IF, at the same level as the GOTO
BEGIN
    GOTO inside_if;

    <<inside_if>>
    DBMS_OUTPUT.PUT_LINE('Label is at the same level - works!');
END;
/
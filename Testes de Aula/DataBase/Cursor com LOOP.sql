-- CURSOR IMPLICITO
DECLARE

BEGIN

FOR A IN (SELECT DEPARTMENT_NAME FROM departments)
LOOP

DBMS_OUTPUT.PUT_LINE(A.DEPARTMENT_NAME);

END LOOP;
END;

-- CURSOR EXPL�CITO

DECLARE 
CURSOR A IS SELECT DEPARTMENT_NAME 
            FROM departments;

V_DEPTO A%ROWTYPE;

BEGIN

    OPEN A;
    LOOP
      FETCH A INTO V_DEPTO;
        DBMS_OUTPUT.PUT_LINE(V_DEPTO.DEPARTMENT_NAME);
        EXIT WHEN A%NOTFOUND;
    END LOOP;
    CLOSE A;
END;
clear screen;
SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE

X number:= &Eid;
r number;

Begin

  r := myPackage.Generate_Salary(X);
 
  DBMS_OUTPUT.PUT_LINE(r||' TK is the generated salary for ID '||X);
  
  commit;
end;
/

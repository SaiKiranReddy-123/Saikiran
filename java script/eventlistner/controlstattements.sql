--conditional control statements
--if_then:

DECLARE
ln_salary number:=20000;
BEGIN
    if ln_salary > 15000
    then 
    DBMS_OUTPUT.PUT_LINE('high paid salary');
    end if;
end;

DECLARE
ln_salary number:=20000;
BEGIN
    if ln_salary > 15000
    then 
    DBMS_OUTPUT.PUT_LINE('high paid salary');
    ln_salary := ln_salary+ln_salary*1.10;
    DBMS_OUTPUT.PUT_LINE('new salary: '|| ln_salary);
    end if;
end;
--if_then.else
DECLARE
ln_age number:=17;
BEGIN
    if ln_age >=18

    then 
    DBMS_OUTPUT.PUT_LINE('eligble to vote');
    ELSE
    DBMS_OUTPUT.PUT_LINE('not ligble to vote');
    end if;
end;

--if elseif else:

DECLARE
ln_marks number:= 65;
BEGIN
    if ln_marks >= 90  
    then 
    DBMS_OUTPUT.PUT_LINE('execellent');
    ELSE IF 
    ln_marks >= 80 
    THEN
    DBMS_OUTPUT.PUT_LINE('good');

    else IF
    ln_marks >= 70 
    THEN
    DBMS_OUTPUT.PUT_LINE('avaerage');

    else IF
    ln_marks >= 60
    THEN
    DBMS_OUTPUT.PUT_LINE('below average');

    else  
    DBMS_OUTPUT.PUT_LINE('bad');
    

end;
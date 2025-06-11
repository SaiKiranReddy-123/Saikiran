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
    ELSIF 
    ln_marks >= 80 
    THEN
    DBMS_OUTPUT.PUT_LINE('good');

    elsIF
    ln_marks >= 70 
    THEN
    DBMS_OUTPUT.PUT_LINE('avaerage');

    elsIF
    ln_marks >= 60
    THEN
    DBMS_OUTPUT.PUT_LINE('below average');

    else  
    DBMS_OUTPUT.PUT_LINE('bad');
    end if;

end;

DECLARE
i number := 0;
BEGIN
    loop
    DBMS_OUTPUT.PUT_LINE('i ='||i);
    i:=i+1;
    exit when i>5;
    end loop;
end;

DECLARE
counter number :=1;

BEGIN
    loop
    DBMS_OUTPUT.PUT_LINE('counter : ' || counter);

    counter := counter+1;

    exit when counter >5;

    end loop;
end;

--else :
-------------

DECLARE
    marks number := 45;
BEGIN
    if marks >= 50 then
    DBMS_OUTPUT.PUT_LINE('pass');
    ELSE
    DBMS_OUTPUT.PUT_LINE('fail');

    end if;
end;








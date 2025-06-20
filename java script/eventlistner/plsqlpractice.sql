--control statements

--if_then

DECLARE
    ln_salary number:=20000;
BEGIN
    if ln_salary >15000
    then
    DBMS_OUTPUT.PUT_LINE('high paid salary');
    end if;
end;

DECLARE
    ln_salary number:=20000;
BEGIN
    if ln_salary > 15000
    THEN
    DBMS_OUTPUT.PUT_LINE('High paid salary');
    ln_salary:= ln_salary+ln_salary*1.10;
    DBMS_OUTPUT.PUT_LINE('new salary :' || ln_salary);
    end if;
end;

--if_then_else

DECLARE
ln_age number :=17;
BEGIN
    if ln_age >18 
    THEN
        

end;
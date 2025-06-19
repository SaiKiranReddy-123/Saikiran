--continue
-----------
DECLARE
i NUMBER :=0;
BEGIN
    LOOP
         i := i+1;
        CONTINUE when  i = 2;
        DBMS_OUTPUT.PUT_LINE('i = ' || i);
        exit when i > 5;
    end loop;
end;

DECLARE
i NUMBER :=1 ;
BEGIN
    LOOP
        i := i+1;
        if i =2 THEN
            CONTINUE;
        end if;
        DBMS_OUTPUT.PUT_LINE('i = ' || i);
        exit when i >   5;
    end loop;
end;



--case
--simple case

DECLARE
lv_grade char(1):= 'A';
ln_bonus number;
BEGIN
    if lv_grade = 'A' then 
    ln_bonus := 10000;
    elsif lv_grade = 'B' then
    ln_bonus :=7500;
    elsif lv_grade = 'c' then
    ln_bonus := 5000;
    else 
    ln_bonus := 0;
    end if;
    dbms_output.put_line('Bonus :' || ln_bonus);
END;








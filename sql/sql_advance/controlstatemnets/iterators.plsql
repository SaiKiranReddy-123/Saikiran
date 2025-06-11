--iterative statements
----------------------
--simple loop:

DECLARE
i number := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('i = '|| i);
        i:=i+1;
        exit when i>5;
    end loop;
end;


--while loop

DECLARE
i NUMBER :=1;
BEGIN
    while i<=5 loop
    DBMS_OUTPUT.PUT_LINE('i = '|| i);
    i:=i+1;
    end loop;
end;

--for loop

BEGIN
    for i in 1..5
    loop
    DBMS_OUTPUT.PUT_LINE('counter -i:' || i );
    end loop;
end;

--reverse the for loop

BEGIN
    for i in REVERSE 5..10
    loop
    DBMS_OUTPUT.PUT_LINE('counter -i:' || i );
    end loop;
end;

--seqential control statements
--GOTO

DECLARE
LN_NUM NUMBER := 10;
BEGIN
    IF LN_NUM = 10
    THEN
        GOTO skip_msg;
    END IF;
    DBMS_OUTPUT.PUT_LINE('it wont print  -1');
    DBMS_OUTPUT.PUT_LINE('it wont print  -2');
    DBMS_OUTPUT.PUT_LINE('it wont print  -3');
    DBMS_OUTPUT.PUT_LINE('it wont print  -4');
    <<skip_msg>>
    DBMS_OUTPUT.PUT_LINE('Skipped above 5 and printed this');
END;

--exit
--------

BEGIN
    for i in 1..10 loop
    if i=6 then
    exit;
    end if;
    DBMS_OUTPUT.PUT_LINE('i ='|| i);

    end loop;


end;

--NULL:
------------

DECLARE
ln_num number;
BEGIN
    if ln_num = 10
    THEN
        null;
    end if;
end;


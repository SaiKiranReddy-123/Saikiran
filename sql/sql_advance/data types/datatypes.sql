DECLARE
lc_text CLOB;
BEGIN
    lc_text:='this is a sample test to the test the large object (lob) data type and that too 
              it is a clob type...It is basically used to store large amount of character data 
              in oracle db.';
        lc_text:=lc_text||rpad(lc_text,10000,'*');
DBMS_OUTPUT.PUT_LINE('lc_clob_text:'|| lc_text);
end;
--boolean data type
----------------------
CREATE table xxnyb_boolean_test(emp_id number,emp_name VARCHAR2(20),is_active char(1));

insert into XXNYB_BOOLEAN_TESt
 VALUES(1,'test1','Y');


insert into XXNYB_BOOLEAN_TEST
 VALUES(2,'test2','N');

 select * from XXNYB_BOOLEAN_TEST;

DECLARE
    lc_active_flag char(1);
    lb_active BOOLEAN;
BEGIN
    select is_active
    into  lc_active_flag
    from XXNYB_BOOLEAN_TEST
    where EMP_ID = 2;

     lb_active := CASE
        when lc_active_flag ='Y'
        THEN TRUE
        ELSE FALSE
        END;
    IF lb_active
    then 
    DBMS_OUTPUT.PUT_LINE('Employee is active');
    else 
      DBMS_OUTPUT.PUT_LINE('Employee is inactive');   
    end if;  
end;



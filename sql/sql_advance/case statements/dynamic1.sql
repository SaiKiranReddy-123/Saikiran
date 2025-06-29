--assignment statements:

DECLARE
lv_name VARCHAR2(100);
BEGIN 
    DBMS_OUTPUT.PUT_LINE('employee name :'|| lv_name);
end;

DECLARE
lv_emp employees%rowtype;
BEGIN
    SELECT * 
    into lv_emp
    from EMPLOYEES
    WHERE EMPLOYEE_ID = 101;
    DBMS_OUTPUT.PUT_LINE('emp first name :' || lv_emp.first_name);
    DBMS_OUTPUT.PUT_LINE('emp salary :'|| lv_emp.salary);
end;

CREATE table xxnyb_test_plsql( sno number,topic VARCHAR2(100),start_date date);

BEGIN
    INSERT into xxnyb_test_plsql
    values(102,'data types','10-May-2025') ;
    commit;
end;

select rowid,xtp.* from xxnyb_test_plsql xtp;

--update statement

BEGIN
    update XXNYB_TEST_PLSQL
    set START_DATE = '02-May-2025'
    where rowid = 'AAAR+0AABAAAIXpAAC';
    commit;
end;

-- delete statement

BEGIN
    DELETE from XXNYB_TEST_PLSQL
    where rowid = 'AAAR+0AABAAAIXpAAB';

    commit;
end;

--ddl using dynamic sql

BEGIN
    EXECUTE IMMEDIATE 'create table xxnyb_sql_test(emp_id number,emp_name varchar2(100))';
    DBMS_OUTPUT.PUT_LINE('table xxnyb_dsql_emp_test created ');
end;

desc xxnyb_dsql_emp_test;

BEGIN
    EXECUTE IMMEDIATE 'drop table xxnyb_dsql_emp_test';
    DBMS_OUTPUT.PUT_LINE('table xxnyb_dsql_emp_test is dropped.');
end;

-- dml using dynamic sql

DECLARE
lv_sql VARCHAR2(500);
BEGIN
    lv_sql := 'insert into xxnyb_sql_test values(101,''vamsi'')';
    EXECUTE IMMEDIATE lv_sql;
    DBMS_OUTPUT.PUT_LINE('1 row inserted');
    commit;
end;

select * from xxnyb_sql_test;

alter TABLE xxnyb_sql_test
add salary number;

create table xxnyb_dsql_test2
AS
SELECT * from xxnyb_dsql_test
where 1 = 1;

SELECT * from xxnyb_dsql_test2;

--updated dynamic sql:
------------------------

DECLARE
    lv_table VARCHAR2(100) := 'xxnyb_sql_test';
    lv_sql   VARCHAR2(500);
BEGIN
    lv_sql := 'UPDATE ' || lv_table || ' SET salary = 10000';

    EXECUTE IMMEDIATE lv_sql;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE(lv_table || ' row(s) have been updated');
END;
/
--delete dynamic sql :
---------------------

DECLARE
    ln_table  VARCHAR2(100) := 'xxnyb_dsql_test2';
    lv_plsql  VARCHAR2(500);
BEGIN
    lv_plsql := 'DELETE FROM ' || ln_table || ' WHERE emp_id = 101';

    EXECUTE IMMEDIATE lv_plsql;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Row with emp_id = 101 deleted from ' || ln_table);
END;
/


-- Examples of Using ALTER Commands in PL/SQL

DECLARE
    v_sql VARCHAR2(100);
BEGIN
    v_sql :='alter table xxnyb_sql_test add (bonus number)';

    EXECUTE IMMEDIATE v_sql;
    commit;
    DBMS_OUTPUT.PUT_LINE('column added successfully');
    end;

    select * from xxnyb_sql_test;

--rename the column: 

DECLARE
v_rename VARCHAR2(100);

BEGIN
    v_rename := 'alter table xxnyb_sql_test rename column bonus to commision';
    EXECUTE IMMEDIATE v_rename ;
    DBMS_OUTPUT.PUT_LINE(' column renamed');
end;

select * from XXNYB_SQL_TEST;

--modify the column

DECLARE
    s_k VARCHAR2(200);
BEGIN
    s_k := 'ALTER TABLE xxnyb_sql_test MODIFY commision VARCHAR2(100)';
    
    EXECUTE IMMEDIATE s_k;

    DBMS_OUTPUT.PUT_LINE('Column COMMISSION modified to VARCHAR2(100)');
END;
/

--drop the column

DECLARE
s_l VARCHAR2(100);
BEGIN
    s_l := 'alter table xxnyb_sql_test drop column commision';
    EXECUTE IMMEDIATE s_l;
    DBMS_OUTPUT.PUT_LINE('column dropped');
end;

begin 
execute immediate 'alter table xxnyb_sql_test drop column commision';
dbms_output.put_line('Table is altered');
end;




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
    EXECUTE IMMEDIATE 'create table xxnyb_dsql_emp_test(emp_id number,emp_name varchar2(100))';
    DBMS_OUTPUT.PUT_LINE('table xxnyb_dsql_emp_test created ');
end;

desc xxnyb_dsql_emp_test;

BEGIN
    EXECUTE IMMEDIATE 'drop table xxnyb_dsql_emp_test';
    DBMS_OUTPUT.PUT_LINE('table xxnyb_dsql_emp_test is dropped.');
end;

-- dml using dynamic sql

DECLARE
lv_sql VARCHAR2(100);
BEGIN
    lv_sql := 'insert into xxnyb_dsql_emp_test values(101,"vamsi")';
    EXECUTE IMMEDIATE lv_sql;
    DBMS_OUTPUT.PUT_LINE('1 row inserted');
end;

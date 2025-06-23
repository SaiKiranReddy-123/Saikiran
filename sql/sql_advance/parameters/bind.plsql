create table plsql_test_emp(emp_id number, 
                        emp_name VARCHAR2(100));

DECLARE
lv_emp varchar2(100);
BEGIN
    lv_emp :='insert into test_emp values(101,''kiran'')';
    EXECUTE IMMEDIATE lv_emp;
    commit;
    DBMS_OUTPUT.PUT_LINE('one row is inserted:' || lv_emp);
end;

select * from TEST_EMP;

--bind parameter
--sql example

select * FROM EMPLOYEES
WHERE employee_id = :a;

--multiple bind parameters

select * from EMPLOYEES
where DEPARTMENT_ID = :1
and SALARY > : 2;


select * from EMPLOYEES
where DEPARTMENT_ID IN(20,30) :1
and SALARY > : 2;


BEGIN
    select salary into : esalary
    from EMPLOYEES
    where DEPARTMENT_ID = 101;
end;


select * from EMPLOYEES;

DECLARE
lv_sql varchar2(100);
ln_emp_id plsql_test_emp.emp_id%type :=102;
lv_emp_name plsql_test_emp.emp_name%type := 'kiran';
BEGIN
    lv_sql := 'insert into plsql_test_emp values(:1 , :2)';
    EXECUTE immediate lv_sql using ln_emp_id,lv_emp_name;
    commit;
end;

select * from plsql_test_emp;

DECLARE
    ln_table VARCHAR2(100):= 'plsql_test_emp';
    lv_emp VARCHAR2(500);
begin
    lv_emp := 'delete from '|| ln_table || 'where emp_id = 101';

    EXECUTE IMMEDIATE lv_emp;

    commit;
    DBMS_OUTPUT.PUT_LINE('one row deleted' || ln_table);
end;

--lexical parameters
SELECT * from &table_name;

select &col_name ,&col_name2 FROM
EMPLOYEES;

SELECT * from EMPLOYEES
&where_clause;


SELECT * from EMPLOYEES
where DEPARTMENT_ID = 60
&1 ;


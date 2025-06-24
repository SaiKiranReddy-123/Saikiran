--lexical parameters
SELECT * from &table_name;

select &col_name ,&col_name2 FROM
EMPLOYEES;

SELECT * from EMPLOYEES
&where_clause;


SELECT * from EMPLOYEES
where DEPARTMENT_ID = 60
&1 ;

--plsql lexical parameters

DECLARE
lv_sql varchar2(300);
ln_result number;
BEGIN
    lv_sql := 'select max(&col_name) from employees';
    EXECUTE IMMEDIATE lv_sql into ln_result;
    DBMS_OUTPUT.PUT_LINE('max value: '|| ln_result);
end;

DECLARE
lv_sql VARCHAR2(200);
ln_result number ;
begin
lv_sql := 'select count(*) from employees &where_clause';
EXECUTE IMMEDIATE lv_sql into ln_result;
DBMS_OUTPUT.PUT_LINE('count : ' || ln_result);
end;

declare
   lv_sql    varchar2(100);
   ln_result number;
begin
   lv_sql := 'select count(*) from employees &where_clause';
   execute immediate lv_sql
     into ln_result;
   dbms_output.put_line('count : ' || ln_result);
end;

DECLARE
    lv_column  VARCHAR2(30) := 'first_name';
    lv_query   VARCHAR2(1000);
    lv_result  VARCHAR2(100);
BEGIN
    lv_query := 'SELECT ' || lv_column || ' INTO :1 FROM employees WHERE employee_id = :2';
    EXECUTE IMMEDIATE lv_query INTO lv_result USING 101;
    DBMS_OUTPUT.PUT_LINE('Result: ' || lv_result);
END;

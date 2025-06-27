--data types

DECLARE
emp_id NUMBER:= 100;
emp_name VARCHAR2(100);
hire_date DATE :=SYSDATE;
is_active BOOLEAN := TRUE;
BEGIN
    emp_name := 'sai';
    if is_active THEN
        DBMS_OUTPUT.PUT_LINE('employee:'|| emp_name );
        DBMS_OUTPUT.PUT_LINE('hired : ' || hire_date);
    end if;
end;

--composite data type

DECLARE
TYPE emp_com is RECORD(
    id NUMBER,
    name VARCHAR2(100),
    salary number
);
employee emp_com;
BEGIN
    employee.id := 101;
    employee.name := 'kiran';
    employee.salary := 10000;

    DBMS_OUTPUT.PUT_LINE('emp_id :' || employee.id);
    DBMS_OUTPUT.PUT_LINE('emp_name :' || employee.name);
    DBMS_OUTPUT.PUT_LINE('emp_salary :' || employee.salary);

end;

--refrence data type

--% type

DECLARE
v_emp_id employees.EMPLOYEE_ID%TYPE;
v_first_name employees.first_name%TYPE;
BEGIN
    SELECT employee_id,first_name
    into v_emp_id,v_first_name
    from EMPLOYEES
    where ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('id : ' || v_emp_id);
    DBMS_OUTPUT.PUT_LINE('name :' || v_first_name);
end;

--%row type

DECLARE
v_emp_record employees%rowtype;

BEGIN
    select * into v_emp_record
    from EMPLOYEES
    where EMPLOYEE_ID = 101;

    DBMS_OUTPUT.PUT_LINE('name :' || v_emp_record.first_name || '' ||v_emp_record.last_name);
    DBMS_OUTPUT.PUT_LINE('job_id :' || v_emp_record.job_id);
end;

--iterative statements

--simple loop

DECLARE
i NUMBER :=1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('i :' || i);
        i:=i+1;
        exit when  i>5;
    end loop;
end;

--while loop

DECLARE
i NUMBER:=1;
BEGIN
    while i<=5 LOOP
    DBMS_OUTPUT.PUT_LINE('i:=' || i);
    i:= i+1;
    end loop;

end;
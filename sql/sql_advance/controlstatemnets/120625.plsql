--data types

DECLARE
emp_id NUMBER:= 100;
emp_name VARCHAR2(100);
hire_date DATE :=SYSDATE;
is_active BOOLEAN := true;
BEGIN
    emp_name := 'sai';
    if is_active THEN
        DBMS_OUTPUT.PUT_LINE('employee:'|| emp_name );
        DBMS_OUTPUT.PUT_LINE('hired : ' || hire_date);
    end if;
end;

--composite data type

DECLARE
TYPE emp_rec is record(
    id number,
    name VARCHAR2(30),
    salary number
);
employee emp_rec;
BEGIN
    employee.id := 101;
    employee.name := 'kiran';
    employee.salary :=14400;

    DBMS_OUTPUT.PUT_LINE('emp_id :'|| employee.id);
    DBMS_OUTPUT.PUT_LINE('emp_name : ' || employee.name);
    DBMS_OUTPUT.PUT_LINE('emp_salary : ' || employee.salary);
    
end;

--refrence data type

--% type

DECLARE
v_emp_id employees.EMPLOYEE_ID%TYPE;
v_first_name employees.first_name%TYPE;
BEGIN
    SELECT employee_id,first_name
    into v_emp_id,v_first_name
    from employees
    where rownum =1;
    DBMS_OUTPUT.PUT_LINE('id:'|| v_emp_id);
    DBMS_OUTPUT.PUT_LINE('name : ' || v_first_name);
end;

--% row type

DECLARE
v_emp_record employees%rowtype;

BEGIN
    select * into v_emp_record
    from employees
    where employee_id = 101;

    DBMS_OUTPUT.PUT_LINE('name :' || v_emp_record.first_name ||' '|| v_emp_record.last_name);
    DBMS_OUTPUT.PUT_LINE('job:'|| v_emp_record.job_id);
end;

--conditional control statements
-------------------------------------
--if condition :

DECLARE
salary NUMBER := 12000;
BEGIN
    if salary > 10000 THEN
        DBMS_OUTPUT.PUT_LINE('High salary');
    end if;
end;

--if then else

DECLARE
salary number := 5000;
BEGIN
    if salary > 10000 THEN
        DBMS_OUTPUT.PUT_LINE('High salary');
    ELSE
    DBMS_OUTPUT.PUT_LINE('low salary');
end;

--if elsif else

DECLARE
salary number:=3500;
BEGIN
    if salary > 10000 THEN
        DBMS_OUTPUT.PUT_LINE('high paid salary');
    elsif salary >5000 THEN
        DBMS_OUTPUT.PUT_LINE('medium paid salary');
    ELSE
        DBMS_OUTPUT.PUT_LINE('low paid salary');
    end if;    

end;

--iterative control statements
-------------------------------
--simple loop :

DECLARE
i number :=1;

BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('i :' || i);
        i:=i+1 ;
        exit when i>5;
    end loop;
end;

--while loop :

DECLARE
i number :=1;
BEGIN
    WHILE i<=5 LOOP
        DBMS_OUTPUT.PUT_LINE('i = ' || i);
        i := i + 1;
    END LOOP;
END;

--for loop 

BEGIN
    for i in 1..5 loop
    dbms_output.put_line('i:' || i);
    end loop;
end;

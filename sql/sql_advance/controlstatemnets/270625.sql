--data types
--scalar data type

DECLARE
    emp_id number := 101;
    emp_name VARCHAR2(100) ;
    emp_date date := SYSDATE;
    is_active boolean := TRUE;

BEGIN
    emp_name := 'sai';
    if is_active then

        DBMS_OUTPUT.PUT_LINE('employee: '|| emp_name);
        DBMS_OUTPUT.PUT_LINE('hired : '|| emp_date);
    end if;
end;

--composite data type

DECLARE
    TYPE emp_details is RECORD(
        id number ,
        name VARCHAR2(100),
        salary NUMBER
    );
EMPLOYEE emp_details;
BEGIN
    employee.id :=100;
    employee.name := 'test';
    employee.salary := 10000;

    DBMS_OUTPUT.PUT_LINE('emp_id :' || employee.id);
    DBMS_OUTPUT.PUT_LINE('emp_name : '|| employee.name);
    DBMS_OUTPUT.PUT_LINE('emp_salary : ' || employee.salary);

end;

--refrence data types

--% type

DECLARE
    v_emp_id employees.EMPLOYEE_ID%TYPE;
    v_first_name employees.FIRST_NAME%TYPE;

BEGIN
    select employee_id,first_name
    into v_emp_id,v_first_name
    from EMPLOYEES
    where rownum = 1;

    DBMS_OUTPUT.PUT_LINE('emp_id :' || v_emp_id) ;
    DBMS_OUTPUT.PUT_LINE('emp_name :' || v_first_name);
end;

--%row type
DECLARE
    emp_record employees%rowtype;
BEGIN
    select * into emp_record
    from EMPLOYEES
    where EMPLOYEE_ID = 101;

    DBMS_OUTPUT.PUT_LINE('fullname : '|| emp_record.first_name || ' ' || emp_record.last_name);
    DBMS_OUTPUT.PUT_LINE('manager_id : '|| emp_record.manager_id);
end;


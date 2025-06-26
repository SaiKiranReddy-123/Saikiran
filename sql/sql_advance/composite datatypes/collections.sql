
--plsql record


DECLARE
    TYPE emp_record is RECORD(
        emp_id NUMBER ,
        emp_name VARCHAR2(100),
        dept_name VARCHAR2(100)
    );
    lr_emp_rec emp_record;
BEGIN
    lr_emp_rec.emp_id := 101;
    lr_emp_rec.emp_name := 'sai kiran';
    lr_emp_rec.dept_name := 'IT';

    DBMS_OUTPUT.PUT_LINE('employee_id : '|| lr_emp_rec.emp_id);
    DBMS_OUTPUT.PUT_LINE('employee_name : ' || lr_emp_rec.emp_name);
    DBMS_OUTPUT.PUT_LINE('department_name : ' || lr_emp_rec.dept_name);
end;

--table based record type

DECLARE
    lt_emp_rec employees%rowtype;
BEGIN
    lt_emp_rec.employee_id := 1001;
    lt_emp_rec.employee_firstname := 'test';
    lt_emp_rec.employee_lastname := 'emp';
    lt_emp_rec.employee_hire_date := SYSDATE - 190;
    lt_emp_rec.employee_phone := 9087654321;

    DBMS_OUTPUT.PUT_LINE('emp_id : '|| lt_emp_rec.employee_id);
    DBMS_OUTPUT.PUT_LINE('emp_firstname : '|| lt_emp_rec.employee_firstname);
    DBMS_OUTPUT.PUT_LINE('emp_lastname : '|| lt_emp_rec.employee_lastname);
    DBMS_OUTPUT.PUT_LINE('emp_date : '|| lt_emp_rec.employee_hire_date);
    DBMS_OUTPUT.PUT_LINE('emp_phonenumber : '|| lt_emp_rec.employee_phone);

end;
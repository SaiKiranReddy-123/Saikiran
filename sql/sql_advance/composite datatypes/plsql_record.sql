--composite data type

--plsql record datatype

DECLARE
    TYPE emp_record is RECORD(
        employee_id number,
        employee_name VARCHAR2(100),
        employee_hire_date date
    );
    lr_emp_rec emp_record;
BEGIN
    lr_emp_rec.employee_id := 1001;
    lr_emp_rec.employee_name := 'sk';
    lr_emp_rec.employee_hire_date:= (SYSDATE- 190);

    DBMS_OUTPUT.PUT_LINE('employee_id : ' || lr_emp_rec.employee_id);
    
    DBMS_OUTPUT.PUT_LINE('employee_name : ' || lr_emp_rec.employee_name);

    DBMS_OUTPUT.PUT_LINE('employee_date : ' || lr_emp_rec.employee_hire_date);

end;

--table base record type

DECLARE
    lr_emp_rec employees%rowtype;
BEGIN
    lr_emp_rec.employee_id := 1001;
    lr_emp_rec.first_name := 'test';
    lr_emp_rec.last_name := 'emp';
    lr_emp_rec.email := 'testemp@gmail.com';
    lr_emp_rec.phone_number := 9876543210;

    
    DBMS_OUTPUT.PUT_LINE('employee_id : ' || lr_emp_rec.employee_id);
    
    DBMS_OUTPUT.PUT_LINE('employee first name : ' || lr_emp_rec.first_name);
    
    DBMS_OUTPUT.PUT_LINE('employee_last_name : ' || lr_emp_rec.last_name);
    
    DBMS_OUTPUT.PUT_LINE('employee_email : ' || lr_emp_rec.email);
    
    DBMS_OUTPUT.PUT_LINE('employee_phone : ' || lr_emp_rec.phone_number);

    lr_emp_rec.employee_id := 1002;
end;




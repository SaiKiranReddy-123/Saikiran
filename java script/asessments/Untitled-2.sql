DECLARE
lv_name VARCHAR2(100);
ld_date date;
BEGIN
    SELECT first_name,hire_date
    into lv_name,ld_date
    from employees
where rownum = 1;
DBMS_OUTPUT.PUT_LINE('lv_name:'||lv_name);
DBMS_OUTPUT.PUT_LINE('lv_date:'||ld_date);
end;

DECLARE
lv_name VARCHAR2(100):='test_employee';
ld_date date;
lv_constant VARCHAR2(20);
BEGIN
    DBMS_OUTPUT.PUT_LINE('lv_name:'||lv_name);
    SELECT first_name,hire_date
    into lv_name,ld_date
    from employees
where rownum = 1;
lv_constant:='Constant';
DBMS_OUTPUT.PUT_LINE('lv_name:'||lv_name);
DBMS_OUTPUT.PUT_LINE('lv_date:'||ld_date);
end;

--scalar datatypes
-------------------

DECLARE
lv_empname VARCHAR2(100):='sk';
ln_empid NUMBER := 1001;
ld_date date:= (SYSDATE-190);
BEGIN
    DBMS_OUTPUT.PUT_LINE('employee name :' || lv_empname);
    DBMS_OUTPUT.PUT_LINE('employee id :' || ln_empid);
    DBMS_OUTPUT.PUT_LINE('employee name :' || ld_date);

    ln_empid:=1002;
    DBMS_OUTPUT.PUT_LINE('employee id :' || ln_empid);
end;


--composite data type
----------------------------
--record data type : 
-----------------------

DECLARE
TYPE emp_record is RECORD(employee_id number,
                          employee_name VARCHAR2(100),
                          employee_hire_date DATE);
lr_emp_rec    emp_record;
BEGIN
    lr_emp_rec.employee_id:=1001;
    lr_emp_rec.employee_name:='sk';
    lr_emp_rec.employee_hire_date:=(SYSDATE -190);

    
    DBMS_OUTPUT.PUT_LINE('employee name :' || lr_emp_rec.employee_id);
    DBMS_OUTPUT.PUT_LINE('employee id :' ||  lr_emp_rec.employee_name);
    DBMS_OUTPUT.PUT_LINE('employee name :' || lr_emp_rec.employee_hire_date);

end;

--refrence data type 
--%type

DECLARE
lv_first_name employees.first_name%type;
BEGIN
    SELECT FIRST_NAME
    into lv_first_name
    FROM EMPLOYEES
    where employee_id = 101;

DBMS_OUTPUT.PUT_LINE('employees first name :' || lv_first_name);
end;
--%rowtype
---------------
DECLARE
lv_rec_emp employees%rowtype;
BEGIN
    SELECT *
    into lv_rec_emp
    from EMPLOYEES
    where EMPLOYEE_ID = 101;
    DBMS_OUTPUT.PUT_LINE('employee name :'|| lv_rec_emp.first_name ||' '|| lv_rec_emp.last_name);
    DBMS_OUTPUT.PUT_LINE('employee email:'|| lv_rec_emp.email);
    DBMS_OUTPUT.PUT_LINE('employee mobile number:'|| lv_rec_emp.phone_number);
    DBMS_OUTPUT.PUT_LINE('employee hire_date:'|| lv_rec_emp.hire_date);
    DBMS_OUTPUT.PUT_LINE('employee job_id:'|| lv_rec_emp.job_id);
    DBMS_OUTPUT.PUT_LINE('employee salary:'|| lv_rec_emp.salary);
    DBMS_OUTPUT.PUT_LINE('employee commision pct:'|| lv_rec_emp.COMMISSION_PCT );
    DBMS_OUTPUT.PUT_LINE('employee manager id:'|| lv_rec_emp.manager_id);
    DBMS_OUTPUT.PUT_LINE('employee department id:'|| lv_rec_emp.department_id);
end;

desc employees;



--scalar datat type
-----------------
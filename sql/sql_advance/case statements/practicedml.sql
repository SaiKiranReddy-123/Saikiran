create table test_emp(emp_id number, 
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
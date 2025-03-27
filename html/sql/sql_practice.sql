--Constarints:-
---------------

create table xxnyb_constraints (emp_id number,
                          ename varchar2(20) not null,
                          esalary number);


insert into  xxnyb_constraints(emp_id,ename,esalary)
values(101,'sai',14400);

insert into  xxnyb_constraints(emp_id,esalary)
values(101,1440);

ALTER TABLE XXNYB_CONSTRAINTS
MODIFY emp_id number UNIQUE;

desc XXNYB_CONSTRAINTS;

insert into XXNYB_CONSTRAINTS (emp_id,ename,esalary)
values(101,'kiran',1440);

insert into XXNYB_CONSTRAINTS (emp_id,ename,esalary)
values(102,'kiran',1440);

select * from XXNYB_CONSTRAINTS;

commit;

ALTER TABLE XXNYB_CONSTRAINTS ADD CONSTRAINT EMP_ID__PK PRIMARY KEY ( EMP_ID );

CREATE TABLE nyb_test (
    employee_id   NUMBER,
    employee_name VARCHAR2(100),
    hire_date     DATE,
    department_id NUMBER,
    CONSTRAINT emp_pk PRIMARY KEY (employee_id, employee_name)
);

--Aggregate functions--

select * from hr.employees;

--min():-
----------

select job_id,min(salary)
FROM hr.EMPLOYEES
group by JOB_ID;

--max();-
------------

select job_id,MAX(salary)
FROM hr.EMPLOYEES
group by JOB_ID;

--count():-
--------------

select department_id,salary,count(salary)
from hr.EMPLOYEES
group by salary,DEPARTMENT_ID;

--sum();-
--------
select department_id,sum(salary) as dept_wise_sal
from hr.EMPLOYEES
group by DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;

--avg():-
---------

select department_id,avg(salary) as dept_wise_sal
from hr.EMPLOYEES
group by DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;
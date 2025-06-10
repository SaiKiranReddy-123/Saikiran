--views :-
---------

create view emp_v as select * from employees;

SELECT * from emp_v;

CREATE view emp_dep_v as select e.employee_id,e.first_name||' '||e.last_name as fullname,e.salary,
d.department_id,d.LOCATION_ID
from EMPLOYEEs e
join departments d 
on e.department_id = d.department_id;

select * from EMP_DEP_V;

create or replace view emp_dep_v as
select e.employee_id,last_name,d.department_id,department_name,location_id
from employees e
join departments d
on e.department_id=d.department_id;

SELECT * from EMP_DEP_V;

--vertival view
--------------
create view vertical_view as
select employee_id as emp_id,first_name||' '||last_name as emp_name,
salary as emp_sal,
email as emp_email,
phone_number as emp_phno
from employees;

SELECT * from VERTICAL_VIEW;

CREATE view emp_dep_v as select * from EMPLOYEES
UNION
select * from DEPARTMENTS;

create view horizental_v as select employee_id,
first_name,last_name,salary,DEPARTMENT_ID from EMPLOYEES
where DEPARTMENT_ID = 30;

select * from HORIZENTAL_V;

DROP VIEW HORIZENTAL_V;

CREATE VIEW FUNCTIONAL_V AS SELECT MIN(E.SALARY) AS MIN_SAL,
MAX(E.SALARY)MAX_SAL,E.DEPARTMENT_ID FROM EMPLOYEES E
GROUP BY E.DEPARTMENT_ID
ORDER BY 1;

SELECT * FROM FUNCTIONAL_V;

create view emp_dep_complex_view
as
select employee_id,first_name,department_name
from employees e
join departments d
on e.department_id=d.department_id;
 
SELECT * FROM emp_dep_complex_view;

CREATE VIEW DEPT_VW AS SELECT * FROM EMPLOYEES 
WHERE DEPARTMENT_ID = 60;

SELECT * FROM DEPT_VW;

create view emp_fullname_sal
as
select employee_id,first_name||' '||last_name as full_name,(salary*12)as annual_salary
from employees;

select * from emp_fullname_sal;

--inline view
---------------
select * from (select d.department_id,d.department_name,e.first_name,e.employee_id from departments d
               join 
               HR.employees e
               on e.department_id=d.department_id);

select * from employees;


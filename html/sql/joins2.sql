
select * from hr.EMPLOYEES;


SELECT * from hr.DEPARTMENTS;


--joins:-

--join :-

SELECT e.FIRST_name, d.department_name
FROM HR.Employees e
JOIN HR.Departments d
ON e.department_id = d.department_id;

--inner join :-

SELECT e.FIRST_name, d.department_name
FROM HR.Employees e
INNER JOIN HR.Departments d
ON e.department_id = d.department_id;         -------join and inner join are both are same......


--LEFT OUTER JOIN :-

select e.first_name,e.email,e.job_id,d.department_id,d.department_name
from hr.EMPLOYEES e 
LEFT join hr.DEPARTMENTS d
on e.DEPARTMENT_ID = d.department_id;

--RIGHT OUTER JOIN :-
-----------------------

select e.first_name,e.email,e.job_id,d.department_id,d.department_name
from hr.EMPLOYEES e 
LEFT join hr.DEPARTMENTS d
on e.DEPARTMENT_ID = d.department_id;


--FULL OUTER JOIN ;-
--------------------

SELECT
    e.employee_id,
    e.first_name || ' ' || e.last_name AS employee_name,
    e.department_id AS emp_dept_id,
    d.department_id AS dept_id,
    d.department_name
FROM
    hr.employees e
FULL OUTER JOIN hr.departments d
ON e.department_id = d.department_id
ORDER BY employee_id;





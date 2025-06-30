--sub queries

--single-row subquery

SELECT first_name || ' ' ||last_name as fullname, salary from employees
where salary = (SELECT max (salary) from employees);

--multi-row subquery

select first_name|| ' ' || last_name as fullname
from EMPLOYEES
where DEPARTMENT_ID  = (select DEPARTMENT_ID from DEPARTMENTS
where department_name = 'finance');

SELECT * from DEPARTMENTS;

--Multi-column Subquery

SELECT first_name from EMPLOYEES
where (DEPARTMENT_ID,job_id) IN (
    SELECT DEPARTMENT_ID , job_id
    from JOB_HISTORY
    where end_date >'2022-01-01'
);

--correlated subquery

select e1.first_name
from employees e1 
where SALARY > (
    SELECT AVG (salary)
    from emoloyees e2
    where e1.DEPARTMENT_ID = e2.DEPARTMENT_ID
);

GRANT SELECT ON SYS.employees TO Sys;

--SUBQUERY IN FROM CLAUSE

SELECT department_id, avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) 
WHERE avg_salary > 50000;

--SUB QUERY IN SELECT CLAUSE

SELECT first_name,(SELECT MAX (salary) from employees) as highest_salary
from employees;



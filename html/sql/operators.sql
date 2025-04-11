
select * from hr.EMPLOYEES;

--like operator:-
--------------------

SELECT employee_id, first_name, job_id
FROM HR.employees
WHERE job_id LIKE '%MAN%';


--arthimatic operator:-
--------------------------

SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY,
    SALARY + 100 AS NEW_SALARY
FROM
    HR.EMPLOYEES;


SELECT
    MAX(SALARY) - MIN(SALARY) AS SALARY_RANGE
FROM
    EMPLOYEES;


SELECT
    MAX(SALARY) - MIN(SALARY) AS SALARY_RANGE
FROM
    HR.EMPLOYEES;


SELECT
    MIN(SALARY)
FROM
    HR.EMPLOYEES;


SELECT
    MAX(SALARY)
FROM
    HR.EMPLOYEES;

--RELATIONAL OPERATOR :-
--------------------------

SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    DEPARTMENT_ID IN ( 10, 20, 30 );

SELECT * FROM HR.employees
WHERE job_id != 'IT_PROG';




--comparsion operator :-
----------------------------------

SELECT first_name, last_name, salary
FROM HR.employees
WHERE salary > 10000;


SELECT first_name, last_name, department_id
FROM HR.employees
WHERE NOT department_id = 30;


--set operators :-
--------------------

SELECT first_name FROM HR.employees WHERE department_id = 10
UNION
SELECT first_name FROM HR.employees WHERE department_id = 20;


SELECT first_name FROM HR.employees WHERE department_id = 10
INTERSECT
SELECT first_name FROM HR.employees WHERE department_id = 20;

--logical operator :-
------------------------

SELECT first_name, last_name, salary, department_id
FROM HR.employees
WHERE salary > 10000 AND department_id = 30;


SELECT first_name, last_name, department_id
FROM HR.employees
WHERE department_id = 10 OR department_id = 20;


SELECT
    FIRST_NAME,
    LAST_NAME,
    DEPARTMENT_ID
FROM
    HR.EMPLOYEES
WHERE
    NOT DEPARTMENT_ID = 30;

--SPECIAL OPERATOR :-
-----------------------

SELECT first_name, salary
FROM HR.employees
WHERE salary BETWEEN 5000 AND 10000;

SELECT first_name, department_id
FROM HR.employees
WHERE department_id IN (10, 20, 30);

SELECT first_name
FROM HR.employees
WHERE first_name LIKE 'A%';

SELECT first_name,DEPARTMENT_ID
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;




 --OPERATORS : 
 -------------

 --ARITHIMATIC OPERATOR :
(+)

SELECT * from hr.employees;

SELECT
    FIRST_NAME,
    SALARY,
    SALARY + ( SALARY * 0.10 ) AS INCREASED_SALARY
FROM
  
    HR.EMPLOYEES;

(-)

SELECT
    FIRST_NAME,
    SALARY,
    SALARY - 500 AS AFTER_BONUS_DEDUCTION
FROM
    HR.EMPLOYEES;

(*)

SELECT
    FIRST_NAME,
    SALARY,
    SALARY * 12 AS ANNUAL_SALARY
FROM
    HR.EMPLOYEES;

(/)

SELECT
    FIRST_NAME,
    SALARY,
    SALARY / 4 AS QUARTERLY_SALARY
FROM
    HR.EMPLOYEES;

--RELATIONAL OPERATORS :-
--------------------------
--(=)

SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    DEPARTMENT_ID = 10;

--(!=)
SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    DEPARTMENT_ID != 10;

--(>)

SELECT employee_id, first_name, salary
FROM hr.employees
WHERE salary > 10000;

--(<)

SELECT employee_id, first_name, salary
FROM hr.employees
WHERE salary < 10000;

--(>=) AND (<=)

SELECT employee_id, first_name, salary
FROM hr.employees
WHERE salary >= 5000 AND salary <= 10000;

--LOGICAL OPERATORS

--AND

SELECT employee_id, first_name, salary, department_id
FROM hr.employees
WHERE department_id = 60 AND salary > 5000;

--OR 

SELECT employee_id, first_name, salary, department_id
FROM hr.employees
WHERE department_id = 90 OR salary > 10000;

--NOT

SELECT employee_id, first_name, department_id
FROM hr.employees
WHERE NOT department_id = 50;

--SPECIAL OPERATOR 

--IS

SELECT first_name, commission_pct
FROM hr.employees
WHERE commission_pct IS NULL;


--LIKE

SELECT first_name
FROM hr.employees
WHERE first_name LIKE 'a%';

--BETWEEN...AND

SELECT first_name, salary
FROM hr.employees
WHERE salary BETWEEN 5000 AND 10000;

--IN

SELECT first_name, department_id
FROM hr.employees
WHERE department_id IN (10, 20, 30);

--SET OPERATORS :
-----------------

--UNION

SELECT first_name FROM hr.employees WHERE department_id = 60
UNION
SELECT first_name FROM hr.employees WHERE department_id = 100;

--UNIONAL

SELECT first_name FROM hr.employees WHERE department_id = 60
UNION ALL
SELECT first_name FROM hr.employees WHERE department_id = 100;

--INTERSECT :
-------------
SELECT * FROM hr.employees WHERE department_id = 60
INTERSECT
SELECT * FROM hr.employees WHERE department_id = 100;

--MINUS

SELECT first_name FROM hr.employees WHERE department_id = 60
MINUS
SELECT first_name FROM hr.employees WHERE department_id = 100;

create table t1(x int, y int);
insert into t1(x,y) values(5,8);
insert into t1(x,y) values(2,4);
select* from t1

create table t2(a int, b int);
insert into t2(a,b) values(3,6);
insert into t2(a,b) values(2,4);
select* from t2

table t1 union table t2;




-- CLAUSES :-
----------------

--FROM :-
-------------
SELECT * FROM HR.EMPLOYEES;

--SELECT  :-
-------------

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME
FROM HR.EMPLOYEES;

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME
FROM HR.EMPLOYEES; 

--WHERE CLAUSE :-
-----------------

SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME
FROM HR.EMPLOYEES
WHERE EMPLOYEE_ID IN (100,101,102); 

SELECT * 
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID IN (10,20,30); 


--GROUP BY CLAUSE :-
-------------------------

SELECT DEPARTMENT_ID, SUM(SALARY) AS AVG_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID;

--HAVING CLAUSE :-
--------------------

SELECT DEPARTMENT_ID, AVG(SALARY) AS AVG_SALARY
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) < 4000;





--joins :-
------------
--EQUI JOIN :-
----------------

SELECT * FROM HR.EMPLOYEES;

SELECT
    E.*,
    D.*
FROM
    HR.EMPLOYEES E,
    HR.DEPARTMENTS D
WHERE
    E.DEPARTMENT_ID = D.DEPARTMENT_ID;


SELECT 
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    D.DEPARTMENT_NAME
FROM 
    HR.EMPLOYEES E, HR.DEPARTMENTS D
WHERE 
    E.DEPARTMENT_ID = D.DEPARTMENT_ID;

 --non-equi join :-
 --------------------

SELECT 
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    D.DEPARTMENT_NAME
FROM 
    HR.EMPLOYEES E, HR.DEPARTMENTS D
WHERE 
    E.DEPARTMENT_ID != D.DEPARTMENT_ID;


SELECT
    E.EMPLOYEE_ID,
    E.FIRST_NAME,
    E.LAST_NAME,
    D.DEPARTMENT_NAME
FROM
    hr.employees   e,
    hr.departments d
ORDER BY e.employee_id;

--self join :-
----------------

SELECT
    e1.*,
    e2.first_name manager_first_name,
    e2.last_name manager_last_name
FROM
    hr.employees e1,
    hr.employees e2
WHERE
    e1.manager_id = e2.employee_id;

--Left Outer Join

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+);

--Right Outer Join

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id;


    
--Full Outer Join

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+)   --left outer join  --107
UNION
SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id;

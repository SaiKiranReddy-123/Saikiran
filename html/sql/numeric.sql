--numeric functions:-
-------------------------
--power:-
-------------

SELECT
    POWER(12, 10)
FROM
    DUAL;

--sqrt:-
-----------

SELECT
    SQRT(25)
FROM
    DUAL;

--mod:-
------------

SELECT
    MOD(20, 4)
FROM
    DUAL;

--round:-
------------

SELECT
    ROUND(20.567)
FROM
    DUAL;


SELECT
    ROUND(20.5)
FROM
    DUAL;

SELECT
    ROUND(20.567,2)
FROM
    DUAL;

--trunc:-
-----------

SELECT
    trunc(20.567)
FROM
    DUAL;


SELECT
    ROUND(20.567),
    TRUNC(20.345)
FROM
    DUAL;

--ceil:-
----------

SELECT
    CEIL(25.25)
FROM
    DUAL;

--floor:-
-----------

SELECT
    floor(25.25)
FROM
    DUAL;

SELECT
    floor(25.25),
    ceil(25.25)
FROM
    DUAL;


SELECT
    DEPARTMENT_ID,
    FIRST_NAME , distinct sum(salary) as sal

from hr.employees

group by department_id;
 

 SELECT 
    DEPARTMENT_ID,first_name,
    SUM(DISTINCT SALARY) AS SAL
FROM 
    HR.EMPLOYEES
GROUP BY 
    first_name,DEPARTMENT_ID;


--character functions:-

SELECT
    LENGTH('saikiran')
FROM
    DUAL;


SELECT
    UPPer('saikiran')
FROM
    DUAL;


SELECT
    LOWER('SAIKIRAN')
FROM
    DUAL;


SELECT
    INITCAP('sai kiran')
FROM
    DUAL;


SELECT
    CONCAT('saikiran', 'REDDY')
FROM
    DUAL;

SELECT
    'Saikiran'
    || ' Reddy'
    || ' - Developer' AS FULLNAME
FROM
    DUAL;

SELECT
    LTRIM( 'EEEESAIKIRAN','E') AS LTRIM_FUNCTION
FROM
    DUAL;



SELECT
    LTRIM( 'EEEESAIKIRANEEEEEEEEEEEEE','E') AS LTRIM_FUNCTION
FROM
    DUAL;


SELECT
    RTRIM( 'SAIKIRANEEEEEE','E') AS LTRIM_FUNCTION
FROM
    DUAL;


SELECT
    LTRIM( 'SAIKIRANEEEEEE','E') AS LTRIM_FUNCTION,
    RTRIM( 'SAIKIRANEEEEEE','E') AS RTRIM_FUNCTION,
    TRIM( 'E' FROM 'EEEEEEEEEEESAIKIRANEEEEEE') AS TRIM_FUNCTION
FROM
    DUAL;

SELECT
    REVERSE('narikias')
FROM
    DUAL;

SELECT
    LPAD( 'sai kiran',19,'pagireddy-')
FROM
    DUAL;

SELECT
    RPAD( 'sai kiran',15,'-reddy')
FROM
    DUAL;

SELECT
    REPLACE('sai', 'sai','saikiran')
FROM
    DUAL;


SELECT
    EMPLOYEE_ID,
    DECODE(DEPARTMENT_ID, 10, 'HR', 20, 'Finance',
           30, 'IT', 'Other') AS DEPARTMENT
FROM
    HR.EMPLOYEES;


SELECT 
    employee_id,
    salary,
    CASE
        WHEN salary >= 10000 THEN 'High'
        WHEN salary BETWEEN 5000 AND 9999 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Level
FROM hr.employees;



SELECT
    *
FROM
    HR.EMPLOYEES;





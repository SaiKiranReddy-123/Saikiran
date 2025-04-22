--functions :-

--length :-
-----------

SELECT
    LENGTH(0987654321)
FROM
    DUAL;

--upper :-
-----------

select * from hr.EMPLOYEES;

SELECT UPPER(first_name) AS upper_name
FROM hr.employees
WHERE employee_id = 100;

--lower case:-
---------------

select lower(last_name) AS lower_name
from hr.EMPLOYEES
WHERE EMPLOYEE_ID = 101;

--initcap :-
-------------
SELECT
    INITCAP('this is sql live server') as INITCAP_CASE
FROM
    DUAL;

--CONCAT :-
-----------
SELECT
    FIRST_NAME ||' '|| last_name as full_name
 from hr.employees;

 --TRIM :-
 ----------
SELECT TRIM('#' FROM '###Hello###') AS TRIM_NAME
FROM dual;
--LTRIM :-
----------
SELECT
    LTRIM ('@@@12345@@@', '@' ) AS LTRIM_NAME
FROM DUAL;

SELECT LTRIM('00012345', '0') AS result
FROM dual;

--RTRIM :-
----------

SELECT RTRIM ('P SAI KIRANEEEEEEEEEE','E')
 FROM DUAL;


--REVERSE :-
-------------

SELECT REVERSE ('NARIK IAS') AS REVERSE_NAME
FROM DUAL;

--LPAD :-
---------

SELECT
    LPAD(' LIKI', 8, 'SAI') AS NAME
FROM
    DUAL;
    
--RPAD :-
-----------

SELECT RPAD ('SAI',9,' KIRAN') AS full_name
FROM DUAL;

--REPLACE :-

SELECT REPLACE ('SAI KIRAN','KIRAN','KIRAN REDDY') 
AS REPLACE_NAME
FROM DUAL;

--DECODE :-
-------------

SELECT employee_id, 
       first_name,
       job_id,
       DECODE(job_id,
              'IT_PROG', 'Programmer',
              'AD_VP', 'Vice President',
              'ST_CLERK', 'Clerk',
              'Other') AS job_title
FROM hr.employees;


--CASE :-
-----------

SELECT
    e.*,
    CASE
        WHEN SALARY >20000 THEN 'HIGH SALARY'
        WHEN SALARY BETWEEN 10000 AND 20000 THEN 'MEDIUM SALARY'
        WHEN SALARY < 10000 THEN 'LOW SALARY'
    END AS salary_category
FROM 
    HR.EMPLOYEES e;


--substr :-
--get first 4 letters 

SELECT SUBSTR('Oracle SQL', 1, 4) AS result_string
FROM dual;
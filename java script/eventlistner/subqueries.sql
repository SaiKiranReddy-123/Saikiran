--simple sub query ;-
------------------------

SELECT
    *
FROM
    EMPLOYEES
WHERE
    DEPARTMENT_ID = (
        SELECT
            DEPARTMENT_ID
        FROM
            DEPARTMENTS
        WHERE
            DEPARTMENT_NAME = 'Sales'
    );
--co-related sub query :-
-----------------------

SELECT
    E.*
FROM
    HR.EMPLOYEES E
WHERE
    SALARY > (
        SELECT
            AVG(EMP.SALARY)
        FROM
            HR.EMPLOYEES EMP
        WHERE
            EMP.DEPARTMENT_ID = E.DEPARTMENT_ID
    );

-- multiple row subquery :
---------------------------------
SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    DEPARTMENT_ID IN (
        SELECT
            DEPARTMENT_ID
        FROM
            HR.DEPARTMENTS
        WHERE
            LOCATION_ID = 1700
    );

SELECT LOCATION_ID , DEPARTMENT_ID from hr.DEPARTMENTS;


-----subquery in select clause

select round(avg(salary)) from employees;

select employee_id,first_name,salary,
(select round(avg(salary)) from employees)as avg_sal from employees;
 
 


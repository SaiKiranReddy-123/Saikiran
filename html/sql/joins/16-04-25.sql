--joins by using ansi syntax
-----------------------------

--inner join ;-
----------------
SELECT
    E.FIRST_NAME,
    E.LAST_NAME,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME
FROM
    HR.EMPLOYEES E
INNER JOIN
    HR.DEPARTMENTS D
ON
    E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--left outer jon :-

SELECT
    E.FIRST_NAME,
    E.LAST_NAME,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME
FROM
    HR.EMPLOYEES E
left OUTER JOIN
    HR.DEPARTMENTS D
ON
    E.DEPARTMENT_ID = D.DEPARTMENT_ID;


--right outer join :-

SELECT
    E.FIRST_NAME,
    E.LAST_NAME,
    E.DEPARTMENT_ID,
    D.DEPARTMENT_NAME
FROM
    HR.EMPLOYEES E
right JOIN
    HR.DEPARTMENTS D
ON
    E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--cross join :-
SELECT 
    e.*, 
    d.*
FROM 
    hr.employees e
CROSS JOIN 
    hr.departments d
ORDER BY 
    e.employee_id;

--full outer join:-

SELECT 
    e.*, 
    d.*
FROM 
    hr.employees e
FULL OUTER JOIN 
    hr.departments d
ON 
    e.department_id = d.department_id;

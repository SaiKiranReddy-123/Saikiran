--joins

--simple join(inner join)

--ANSI SYNTAX :-
----------------- 

--simple join :-
------------------
SELECT
    e.*,
    d.department_name,
    d.location_id
FROM
         hr.employees e
    INNER JOIN hr.departments d 
    ON e.department_id = d.department_id;

-- cross join :-
---------------------
SELECT
    e.*,
    d.*
FROM
         hr.employees e
    CROSS JOIN hr.departments d
ORDER BY
    e.employee_id;

--left outer join :-
---------------------

SELECT
    e.*,
    d.*
FROM
    hr.employees   e
    LEFT OUTER JOIN hr.departments d
     ON e.department_id = d.department_id;

--right outer join ;-
---------------------

SELECT
    e.*,
    d.*
FROM
    employees   e
    RIGHT OUTER JOIN departments d 
    ON e.department_id = d.department_id;

--full outer join ;-
---------------------

SELECT
    e.*,
    d.*
FROM
    hr.employees   e
    FULL OUTER JOIN hr.departments d 
    ON e.department_id = d.department_id;

--NON ANSI SYNTAX :-
----------------------

--CROSS/CARTISION JOIN:-
----------------------------

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
ORDER BY e.employee_id;

--SELF JOIN :-
--------------

SELECT
    e1.*,
    e2.first_name manager_first_name,
    e2.last_name manager_last_name
FROM
    HR.employees e1,
    HR.employees e2
WHERE
    e1.manager_id = e2.employee_id;

--OUTER JOIN;
-------------------
--LEFT OUTER JOIN:-
-----------------------

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+);

--right outer join :-
------------------------


SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id ;


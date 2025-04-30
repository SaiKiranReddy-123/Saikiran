CREATE VIEW hr_employees_view AS
SELECT employee_id, first_name, last_name, department_id
FROM hr.employees
WHERE department_id = 50;


select * from hr.EMPLOYEES;


 
CREATE VIEW employees_v AS
    SELECT
        *
    FROM
        employees;
 
SELECT
    *
FROM
    employees_v;
 
CREATE VIEW departments_v AS
    SELECT
        *
    FROM
        employees;
 
SELECT
    *
FROM
    depatments_v;
 
-- Complex view
 
CREATE VIEW emp_dept_v AS
    SELECT
        e.*,
        d.department_name
    FROM
             employees e
        JOIN departments d 
        ON e.department_id = d.department_id;
 
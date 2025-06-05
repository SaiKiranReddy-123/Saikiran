declare begin
   null;
end;

begin
   null;
end;

declare
   v_name varchar2(50) := 'RAMU';
begin
   dbms_output.put_line('Hello ' || v_name);
end;

select employee_id,
       upper(first_name) as first_name_upper,
       initcap(last_name) as last_name
  from employees;

select trim('  Oracle SQL  ') as trimmed_text
  from dual;

select trim(both '$' from '$$Cost$$') as result
  from dual;

select reverse('HELLO')
  from dual;


select 'Hello'
       || ' '
       || 'World' as greeting
  from dual;


select sysdate as today,
       add_months(
          sysdate,
          4
       ) as future_date
  from dual;

select add_months(
   to_date('30-05-2025',
           'DD-MM-YYYY'),
   4
) as future_date
  from dual;

select lpad(
   'sai ',
   11,
   'kalyani'
)
  from dual;


select rpad(
   'likhitha',
   12,
   '-sai'
)
  from dual;

select replace(
   'oracle sql',
   'sql',
   'plsql'
)
  from dual;

select replace(
   'saikiran.p@navayuvabharatinfotech.com',
   'navayuvabharatinfotech.com',
   'nybinfotech.com'
) as new_mail
  from dual;

select employee_id,
       job_id,
       decode(
          job_id,
          'IT_PROG',
          'Developer',
          'HR_REP',
          'HR',
          'ST_CLERK',
          'Store Clerk',
          'Other'
       ) as job_title
  from employees;

select translate(
   'abc123',
   '123',
   ''
) as result
  from dual;

select employee_id,
       salary,
       case
          when salary > 10000                then
             'High'
          when salary between 5000 and 10000 then
             'Medium'
          else
             'Low'
       end as salary_level
  from employees;


select substr(
   'Database',
   5,
   3
) as result
  from dual;

SELECT SUBSTR('Oracle', -3) AS result FROM dual;

SELECT substr('saikiran',4,10) as result from dual;

DECLARE
   num NUMBER := 15;
BEGIN
   IF MOD(num, 2) = 0 THEN
      DBMS_OUTPUT.PUT_LINE('Even number');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Odd number');
   END IF;
END;


--joins :-
------------

SELECT * from EMPLOYEES;

SELECT * from DEPARTMENTS;

SELECT e.employee_id,e.first_name||' '|| last_name as full_name,e.department_id,d.department_id
from EMPLOYEES e 
join DEPARTMENTS D
on e.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT *
FROM employees e
LEFT JOIN departments d
  ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

SELECT e.*,d.* from employees E
RIGHT JOIN DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;


SELECT
    e.*,
    d.*
FROM
    employees   e
    FULL OUTER JOIN departments d 
    ON e.department_id = d.department_id;

SELECT
    e.*,
    d.*
FROM
    employees   e
    INNER JOIN departments d 
    ON e.department_id = d.department_id;


  





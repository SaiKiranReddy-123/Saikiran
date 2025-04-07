--joins:-


SELECT
    EMPLOYEES.EMPLOYEE_ID,
    EMPLOYEES.NAME,
    DEPARTMENTS.DEPARTMENT_NAME
FROM
         HR.EMPLOYEES
    INNER JOIN HR.DEPARTMENTS ON HR.EMPLOYEES.DEPARTMENT_ID = HR.DEPARTMENTS.DEPARTMENT_ID;


select * from hr.DEPARTMENTS;

--DATE FUNCTIONS:-
---------------------
--sysdate:-
-------------

SELECT
    SYSDATE
FROM
    DUAL;

--current_date:-
------------------


SELECT
    CURRENT_DATE
FROM
    DUAL;

--add_months:-
---------------

SELECT
    ADD_MONTHS(SYSDATE, 3)
FROM
    DUAL;  -- Adds 3 months


SELECT
    ADD_MONTHS(SYSDATE, -2)
FROM
    DUAL; -- Subtracts 2 months

SELECT
    NEXT_DAY(SYSDATE, 'SUNDAY')
FROM
    DUAL;

SELECT
    LAST_DAY(SYSDATE)
FROM
    DUAL;


SELECT
    MONTHS_BETWEEN(SYSDATE, TO_DATE('2024-01-01', 'YYYY-MM-DD'))
FROM
    DUAL;


-----decode

select * from employees;

select translate('deepthi','e','g')from dual;

SELECT
    REPLACE('deepthi kuderu', 'deepthi kuderu', 'deep kude')
FROM
    DUAL;

---replace wont work for all columns

select replace('AD_PRES','AD_PRES','PRESIDENT') from HR.employees;


select employee_id,first_name,last_name,job_id,decode(job_id,'AD_PRES','president','IT_PROG','IT_PROGGRAMMER','FI_ACCOUNT','ACCOUNTANT',job_id)

as decoded_jobid from hr.employees;

select employee_id,first_name,last_name,job_id,decode(job_id,'AD_PRES','president','IT_PROG','IT_PROGGRAMMER','FI_ACCOUNT','ACCOUNTANT','common_job')

as decoded_jobid from hr.employees;

----relational operators cant work with decode

SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY,
    DECODE(SALARY, SALARY < 10000, 'low_sal', SALARY > 20000, 'high_sal',
           SALARY BETWEEN 10000 AND 20000, 'med_sal', 'other') SAL_STATUS
FROM
    HR.EMPLOYEES;

----case

select employee_id,first_name,salary,case when salary<10000 then 'low_salary'

                                          when salary>20000 then 'high_salary'

                                          when salary between 10000 and 20000 then 'med_salary'

                                          else 'other'

                                          end as salarY_status from hr.employees;


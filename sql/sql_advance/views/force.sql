-- views : -
------------------

-- FORCE VIEW :-
------------------

CREATE FORCE VIEW XX_NYB_FORCE_V
AS
SELECT * FROM XX_NYB_FORCE_TABLE;



SELECT * FROM ALL_OBJECTS
WHERE OBJECT_TYPE = 'TABLE'
AND OWNER = 'SQL_WFGCPAB5BH24RF91VU7WD33N94'
AND OBJECT_NAME = 'XX_NYB_FORCE_TABLE';

SHOW USER;



CREATE FORCE VIEW future_employees_view AS
SELECT emp_id, emp_name FROM future_employees;


--VERTICAL VIEW :-
-----------------

CREATE VIEW EMP_VERTICAL_V AS
    SELECT
        EMPLOYEE_ID,
        FIRST_NAME
        || ' '
        || LAST_NAME AS FULL_NAME,
        EMAIL,
        SALARY
    FROM
        HR.EMPLOYEES;


GRANT SELECT ON HR.EMPLOYEES TO SQL_WFGCPAB5BH24RF91VU7WD33N94;

GRANT SELECT ON HR.EMPLOYEES TO EMP_VERTICAL_V ;


SELECT * FROM HR.EMPLOYEES;

--HORIZENTAL  VIEW

CREATE VIEW EMP_HORIZENTAL_V AS
SELECT * FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 100;

SELECT * FROM EMP_HORIZENTAL_V;

-- FUNCTIONAL VIEW :
-----------------------

SELECT e.DEPARTMENT_ID,max(salary),min(salary)
from hr.EMPLOYEES e
group by  DEPARTMENT_ID 
order by 1;

CREATE VIEW functional_view AS
SELECT 
  e.DEPARTMENT_ID,
  MAX(esalary) AS max_salary,
  MIN(esalary) AS min_salary
FROM XXNYB_VIEWS e
GROUP BY e.DEPARTMENT_ID;

select * from FUNCTIONAL_VIEW;



CREATE TABLE XXNYB_VIEWS (
    EMPID         NUMBER,
    ENAME         VARCHAR2(30),
    ESALARY       NUMBER,
    PHONE         NUMBER,
    DEPARTMENT_ID NUMBER
);



insert into xxnyb_views(empid,ename,esalary,phone,DEPARTMENT_ID)
values(101,'sai',10000,1234567890,10);

insert into xxnyb_views(empid,ename,esalary,phone,DEPARTMENT_ID)
values(102,'deepthi',10000,0987654321,10);


insert into xxnyb_views(empid,ename,esalary,phone,DEPARTMENT_ID)
values(103,'meghana',10000,1234567823,20);


insert into xxnyb_views(empid,ename,esalary,phone,DEPARTMENT_ID)
values(104,'priyanka',10000,1234554321,30);


insert into xxnyb_views(empid,ename,esalary,phone,DEPARTMENT_ID)
values(105,'vamsi',10000,9834567890,10);


select * from xxnyb_views;


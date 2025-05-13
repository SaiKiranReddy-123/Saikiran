--Index

CREATE BITMAP INDEX emp_gender_idx
ON hr.employees(gender);


create table emp_index
as
SELECT *  from hr.EMPLOYEES;

select * from EMP_INDEX;

create index emp_index_test on emp_index(email);

select * from emp_index_test;

alter table emp_index add gender char(1);

CREATE TABLE XXNYB_EMP_IDX (
    EMPID     NUMBER,
                  EMPNAME   VARCHAR2(30),
    HIRE_DATE DATE,
    SALARY    NUMBER,
    DEPT      NUMBER
);

insert into xxnyb_emp_idx
 values(100,'sai',sysdate -180,10000,10);


insert into xxnyb_emp_idx
 values(101,'priyanka',sysdate -160,20000,30);

 
insert into xxnyb_emp_idx
 values(102,'meghana',sysdate -110,18000,10);

 
insert into xxnyb_emp_idx
 values(103,'charan',sysdate -60,15000,20);

 
insert into xxnyb_emp_idx
 values(104,'deepthi',sysdate -130,10000,10);

 
insert into xxnyb_emp_idx
 values(105,'yeswanth',sysdate -155,10000,20);

 
insert into xxnyb_emp_idx
 values(106,'nirmala',sysdate -150,19000,30);

 
insert into xxnyb_emp_idx
 values(107,'sai',sysdate -180,10000,10);

 
insert into xxnyb_emp_idx
 values(108,'sai',sysdate -180,10000,10);

 select * from XXNYB_EMP_IDX;

 create unique index xxnyb_ent_unq on xxnyb_emp_idx(empid);


drop index xxnyb_ent_unq;


ALTER table xxnyb_emp_idx add CONSTRAINT xxnyb_emp_id_new UNIQUE (empid);

CREATE table xxnyb_info 
as
select * from  XXNYB_EMP_IDX;

select * from hr.EMPLOYEES;


select * from  XXNYB_EMP_IDX
where department_id=80
and salary >= 10000;


CREATE INDEX XXNYB_emp_ci_idx ON
    XXNYB_EMP_IDX (
        DEPARTMENT_ID,
        SALARY
    );
CREATE INDEX idx_upper_last_name ON employees(UPPER(last_name));

select * from idx_upper_last_name;

GRANT SELECT ON employees TO Sys ;

SELECT * FROM employees WHERE UPPER(last_name) = 'SMITH';

CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_email VARCHAR(255),
    emp_name VARCHAR(50),
    CONSTRAINT uk_email UNIQUE (emp_email),
    CONSTRAINT uk_username UNIQUE (emp_name)
);

CREATE UNIQUE INDEX idx_unique_email ON emp(emp_email);

--index

--function based index

SELECT *  from hr.EMPLOYEES
where upper(FIRST_NAME) = 'Steven';

create index atpxxnyb_emp on hr.employees (upper(first_name));



SELECT *  from hr.EMPLOYEES
where upper(FIRST_NAME) = 'Steven';


create table navayuva(
    eid number,
    ename VARCHAR2(20),
    salary NUMBER,
    gender char(1)
);

INSERT into NAVAYUVA 
values(100,'sai',13000,'m');


INSERT into NAVAYUVA 
values(101,'deepthi',15000,'f');


INSERT into NAVAYUVA 
values(102,'meghana',14000,'f');


INSERT into NAVAYUVA 
values(103,'narendra',13000,'m');


INSERT into NAVAYUVA 
values(104,'priyanka',15000,'f');


INSERT into NAVAYUVA 
values(105,'yaswanth',13000,'m');

select * from NAVAYUVA;

select * from NAVAYUVA
where eid in (100,101,102); --0.004 sec

create index NAVAYUVA_idx on NAVAYUVA (eid);



select * from NAVAYUVA
where eid in (100,101,102);

select * from NAVAYUVA
where eid <= 101 and  salary = 13000;

CREATE index navayuva_ci_idx
on navayuva (eid,salary);


select * from NAVAYUVA
where eid <= 101 and  salary = 13000;

select * from NAVAYUVA
where upper(ename) = 'SAI';

CREATE INDEX NAVAYUVA_FUN_IDX ON NAVAYUVA l(UPPER(ENAME));


select * from NAVAYUVA
where upper(ename) = 'SAI';

select power(salary,2) ,n.* from NAVAYUVA n; 

CREATE index navayuva_num_idx on navayuva (power(salary,2));

create index nyb_atp_ind on navayuva (ename);

select * from nyb_atp_ind 
where ename = 'sai';

select power(salary,2) ,n.* from NAVAYUVA n;

select * from hr.EMPLOYEES;

create index emp_ind on hr.employees(email);


select * from NAVAYUVA;

create INDEX nyb_index on NAVAYUVA (ename);


--materialized view

create view emp_v
as 
select * from hr.EMPLOYEES;


create table infotech (
    empid number,
    ename VARCHAR2 (30) ,
    esalary number,
    edate date,
    ecomm number,
    edept number
);


insert into INFOTECH values(101,'sai',14400,TO_DATE('10-01-2025','DD-MM-YYYY'),0.2,10);



insert into INFOTECH values(102,'SAKETH',14400,TO_DATE('10-04-2025','DD-MM-YYYY'),035,.20);


insert into INFOTECH values(103,'KIRAN',14400,TO_DATE('16-01-2025','DD-MM-YYYY'),0.5,10);



insert into INFOTECH values(104,'DILEEP',14400,TO_DATE('10-03-2024','DD-MM-YYYY'),0.1,30);



insert into INFOTECH values(105,'REHAMAN',14400,TO_DATE('10-01-2025','DD-MM-YYYY'),0.2,20);



insert into INFOTECH values(106,'MADHU',14400,TO_DATE('10-12-2024','DD-MM-YYYY'),0.01,60);



CREATE TABLE EMP_K
AS
SELECT * FROM INFOTECH;

SELECT * FROM EMP_K;

CREATE MATERIALIZED VIEW EMP_K_1
BUILD DEFERRED 
REFRESH
COMPLETE
START WITH SYSDATE
REFRESH SYSDATE +1
AS
SELECT * FROM EMP_K;
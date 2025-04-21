--Database Objects
--DBA_OBJECTS
--ALL_OBJECTS

select * from all_objects


SELECT DISTINCT
    object_type
FROM
    all_objects;


--SEQUENCE
--XXNYB_EMPLOYEES_NEW

CREATE TABLE xxnyb_employees_new (
    emp_id   NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100),
    phone_no NUMBER,
    address  VARCHAR2(1000)
);

--create sequence XXNYB_EMPLOYEES_NEW_SEQ

CREATE SEQUENCE xxnyb_employees_new_seq;

--select length(9999999999999999999999999999) from dual;

CREATE SEQUENCE XXNYB_EMPLOYEES_NEW_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999
INCREMENT BY 1 
START WITH 1 
CACHE 20 
NOORDER
NOCYCLE NOKEEP NOSCALE GLOBAL;

DROP SEQUENCE xxnyb_employees_new_seq;

--using INCREMENT BY and START WITH

CREATE SEQUENCE xxnyb_employees_new_seq
INCREMENT BY 10
START WITH 10001;


CREATE SEQUENCE XXNYB_EMPLOYEES_NEW_SEQ
MINVALUE 1 
MAXVALUE 9999999999999999999999999999 
INCREMENT BY 10 
START WITH 10001 
CACHE 20 NOORDER NOCYCLE NOKEEP NOSCALE GLOBAL;


--using MINVALUE and MAXVALUE

drop sequence xxnyb_employees_new_seq;

CREATE SEQUENCE xxnyb_employees_new_seq
INCREMENT BY 10
START WITH 10001
MINVALUE 10001
MAXVALUE 99999
CACHE 30
ORDER
NOCYCLE;


CREATE SEQUENCE XXNYB_EMPLOYEES_NEW_SEQ
MINVALUE 10001
MAXVALUE 99999
INCREMENT BY 10
START WITH 10001
CACHE 30 
ORDER NOCYCLE NOKEEP
NOSCALE GLOBAL;


--CURRVAL and NEXTVAL

select XXNYB_EMPLOYEES_NEW_SEQ.CURRVAL sequence_current_value,
       XXNYB_EMPLOYEES_NEW_SEQ.NEXTVAL sequence_next_value
 from dual;
 

select XXNYB_EMPLOYEES_NEW_SEQ.CURRVAL sequence_current_value
 from dual;
 
 
select XXNYB_EMPLOYEES_NEW_SEQ.NEXTVAL sequence_next_value
from dual;

--insert the data into xxnyb_employees_new

insert into xxnyb_employees_new
values (XXNYB_EMPLOYEES_NEW_SEQ.nextval, 'sai', '9437454979', 'Hyderabad, India');

insert into xxnyb_employees_new
values (XXNYB_EMPLOYEES_NEW_SEQ.currval, 'kiran', '984546456', 'Pune, India');

commit;

select * from xxnyb_employees_new;
--sql advance topics

--sequence:-
-----------------

CREATE TABLE test_employees (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50)
);

desc test_employees;

CREATE SEQUENCE test_employees_seq;

CREATE SEQUENCE test_employees_seq
START WITH 1
MINVALUE  1
MAXVALUE 5
INCREMENT BY 1
cycle ;

create sequence xx_nyb_seq
minvalue 1
maxvalue 1000
increment by 1
start with 1
cache 30
order
nocycle;

CREATE TABLE XX_NYB (
    EID     NUMBER PRIMARY KEY,
    NAME    VARCHAR2(100),
    PHNO    NUMBER,
    ADDRESS VARCHAR2(100)
);

create sequence xx_nyb_seq;

drop SEQUENCE test_employees_seq;

INSERT INTO test_employees (id, name)
VALUES (test_emp_seq.NEXTVAL, 101,'Sai');

-- currval and nextval ;-
---------------------------

select XXNYB_EMPLOYEES_NEW_SEQ.CURRVAL sequence_current_value,
       XXNYB_EMPLOYEES_NEW_SEQ.NEXTVAL sequence_next_value
 from dual;

  
select XXNYB_EMPLOYEES_NEW_SEQ.NEXTVAL sequence_next_value
from dual;


select XXNYB_EMPLOYEES_NEW_SEQ.CURRVAL sequence_current_value
 from dual;

 --using INCREMENT BY and START WITH

CREATE SEQUENCE xxnyb_employees_new_seq
INCREMENT BY 10
START WITH 10001;
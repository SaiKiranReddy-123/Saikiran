SQL_WFGCPAB5BH24RF91VU7WD33N94


GRANT CREATE xx_nyb_2 TO SQL_WFGCPAB5BH24RF91VU7WD33N94;


create table nyb_atp(
    empno number primary key,
    empname varchar2 (100),
    salary number
);


select * from scott.emp;


create table students_atp(
    sname varchar2(100),
    sid number,
    sclass number
)

create sequence students_atp_seq
start with 100
increment by 10
minvalue 100
maxvalue 200
cache 20
order
nocycle;

insert into students_atp values('sam',students_atp_seq.nextval,1);

select * from students_atp;

create sequence students_atp_seq2
start with 2
increment by 1
minvalue 2;


insert into students_atp values('ram',students_atp_seq.nextval,1);


insert into students_atp values('sam',students_atp_seq.nextval,students_atp_seq2.nextval);


insert into students_atp values('lakshman',students_atp_seq.nextval,students_atp_seq2.nextval);



insert into students_atp values('kim',students_atp_seq.nextval,students_atp_seq2.nextval);



insert into students_atp values('mathew',students_atp_seq.nextval,students_atp_seq2.nextval);

select * from students_atp;

--views
---------
CREATE VIEW employees_v AS
SELECT
    EMPLOYEE_ID,
    FIRST_NAME
    FIRST_NAME|| ' ' || LAST_NAME AS FULL_NAME,
    SALARY
FROM
    HR.EMPLOYEES;


select * from hr.employees_v;


select * from hr.employees;


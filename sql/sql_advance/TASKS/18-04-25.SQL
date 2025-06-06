CREATE TABLE STUDENTS (
    STUDENTS_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(30) NOT NULL,
    LAST_NAME VARCHAR2(30),
    EMAIL VARCHAR2(30) UNIQUE,
    DOB DATE,
    DEPARTMENT_ID number,
    phone_number number 
        CHECK (LENGTH(TO_CHAR(phone_number)) = 10),
    CONSTRAINT fk_department FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS (DEPARTMENT_ID)
);
 

CREATE TABLE DEPARTMENTS(
    DEPARTMENT_ID NUMBER PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR2(20) NOT NULL,
    HEAD_OF_DEPARTMENT VARCHAR2(50)
);
INSERT INTO DEPARTMENTS (DEPARTMENT_ID, DEPARTMENT_NAME, HEAD_OF_DEPARTMENT)
VALUES (102, 'computer_science', 'computers_dept');

commit;

insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME, HEAD_OF_DEPARTMENT)
values(101,'maths','maths_dept');

commit;

insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME, HEAD_OF_DEPARTMENT)
values(105,'computer science','computers_dept');

commit;

insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME, HEAD_OF_DEPARTMENT)
values(104,'physics','physics_dept');

commit;

insert into DEPARTMENTS(DEPARTMENT_ID, DEPARTMENT_NAME, HEAD_OF_DEPARTMENT)
values(103,'arts','arts_dept');

commit;

select * from DEPARTMENTS;


INSERT INTO STUDENTS (
    STUDENTS_ID, FIRST_NAME, LAST_NAME, EMAIL, DOB, DEPARTMENT_ID, PHONE_NUMBER
)
VALUES (
    101, 'KIMS', 'RATHO', 'kims@gmail.com', TO_DATE('12-02-2002', 'DD-MM-YYYY'), 102, 9192983812
);

commit;

INSERT INTO STUDENTS (
    STUDENTS_ID, FIRST_NAME, LAST_NAME, EMAIL, DOB, DEPARTMENT_ID, PHONE_NUMBER
)
VALUES(102,'brendon', 'mecclum', 'mecclum@gmail.com', TO_DATE('04-06-2005', 'DD-MM-YYYY'), 101, 3838443259);

commit;

INSERT INTO STUDENTS (
    STUDENTS_ID, FIRST_NAME, LAST_NAME, EMAIL, DOB, DEPARTMENT_ID, PHONE_NUMBER
)
VALUES(103,'dwane','bravo','dwane@gmail.com,',TO_DATE('04-06-2005', 'DD-MM-YYYY'),103,9847538445)

commit;

INSERT INTO STUDENTS (
    STUDENTS_ID, FIRST_NAME, LAST_NAME, EMAIL, DOB, DEPARTMENT_ID, PHONE_NUMBER
)
values(104,'marco','jonson','marco@gmail.com',TO_DATE('25-06-1998', 'DD-MM-YYYY'),104,9701138513);

commit;

INSERT INTO STUDENTS (
    STUDENTS_ID, FIRST_NAME, LAST_NAME, EMAIL, DOB, DEPARTMENT_ID, PHONE_NUMBER
)

values(105,'david','warner','david@gmail.com',TO_DATE('14-12-1995', 'DD-MM-YYYY'),105,7659967890);

commit;


SELECT * 
FROM STUDENTS
WHERE DOB > TO_DATE('31-12-2000', 'DD-MM-YYYY');


SELECT
    department_name,
    COUNT(student_id)
FROM
         departments d
    JOIN students s 
    ON d.department_id = s.department_id
GROUP BY
    department_name;


select * from STUDENTS
order by LAST_NAME;

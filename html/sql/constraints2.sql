CREATE TABLE CONSTRAINT_TEST_NYB (
    SNO             NUMBER,
    CONSTRAINT_NAME VARCHAR(50) NOT NULL,
    COMMENTS        VARCHAR2(40)
);

COMMIT;

insert into CONSTRAINT_TEST_NYB(SNO,CONSTRAINT_NAME,COMMENTS)
VALUES(101,'not_null','no comments');

SELECT * from CONSTRAINT_TEST_NYB;

INSERT INTO CONSTRAINT_TEST_NYB (
    SNO,
    COMMENTS
) VALUES ( 2,
           'No comments' );


ALTER TABLE CONSTRAINT_TEST_NYB MODIFY
    SNO NUMBER UNIQUE;

INSERT INTO CONSTRAINT_TEST_NYB(SNO,CONSTRAINT_NAME,COMMENTS)
VALUES(101,'NULL','COMMENT');

ROLLBACK;

ALTER TABLE CONSTRAINT_TEST_NYB
DROP constraint SYS_C008486;


ALTER TABLE CONSTRAINT_TEST_NYB ADD CONSTRAINT COMMENTS_pk PRIMARY KEY ( COMMENTS );


INSERT INTO CONSTRAINT_TEST_NYB(SNO,CONSTRAINT_NAME,COMMENTS)
VALUES(103,'PRIMARY','COMMENT');



CREATE TABLE xxnyb_constraints_desc_test (
    col_idx        NUMBER NOT NULL,
    constraint_sno NUMBER,
    description    VARCHAR2(500),
    comments       VARCHAR2(500),
    CONSTRAINT col_idx_pk PRIMARY KEY (col_idx)
);


ALTER TABLE xxnyb_constraints_desc_test
ADD CONSTRAINT const_sno_fk FOREIGN KEY ( constraint_sno )
REFERENCES xxnyb_constraints_test ( sno );


ALTER TABLE XXNYB_EMPLOYEES_TEST
ADD CONSTRAINT dept_id_chk CHECK (department_id <= 60);

ALTER TABLE xxnyb_employees_test MODIFY
    hire_date DEFAULT sysdate;

insert into XXNYB_EMPLOYEES_TEST(employee_id, employee_name, department_id)
values(1005, 'Meghana', 40);


insert into XXNYB_EMPLOYEES_TEST(employee_id, employee_name, department_id)
values(1006, 'Charan', 50);
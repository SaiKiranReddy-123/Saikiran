create table students(student_id number primary key,
                      student_name varchar(100),
                      gender varchar(100),
                      dob date
                     );

desc students;

INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(1, 'arava_kumar', 'M', TO_DATE('2002-05-10', 'YYYY-MM-DD'));
INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(2, 'sneha_reddy', 'F', TO_DATE('2001-12-15', 'YYYY-MM-DD'));
INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(3, 'roshan_mehta', 'M', TO_DATE('2003-02-20', 'YYYY-MM-DD'));
INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(4, 'priya_shah', 'F', TO_DATE('2000-09-25', 'YYYY-MM-DD'));
INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(5, 'Vikran_singh', 'M', TO_DATE('2002-07-14', 'YYYY-MM-DD));
INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(6, 'kavya_nair', 'F', TO_DATE('2001-11-01', 'YYYY-MM-DD'));
INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(7, 'Manoj_yadav', 'M', TO_DATE('2003-04-10', 'YYYY-MM-DD'));
INSERT INTO students (student_id, student_name, gender, dob) 
VALUES 
(8, 'Divya_patil', 'F', TO_DATE('2002-06-18', 'YYYY-MM-DD'));
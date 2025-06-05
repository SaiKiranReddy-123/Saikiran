--HOSPITAL MANAGEMENT SYSTEM
-----------------------------
--PAITENTS TABLE :
--------------------

create table paitents (
   paitent_id number primary key,
   p_name     varchar2(30),
   age        number,
   contact    number
);

insert into paitents values ( 121,
                              'RAMU',
                              35,
                              9876543210 );
commit;

insert into paitents values ( 122,
                              'RAJU',
                              40,
                              6789543210 );

commit;

insert into paitents values ( 123,
                              'MADHU',
                              30,
                              6789543012 );
commit;

insert into paitents values ( 124,
                              'VIVEK',
                              25,
                              6909543210 );

commit;
insert into paitents values ( 125,
                              'KRISHNA',
                              33,
                              6309543210 );
commit;
select *
  from paitents;


insert into paitents values ( 126,
                              'MADHAV',
                              45,
                              9709543210 );
commit;

select *
  from paitents
 order by paitent_id;

--DOCTORS TABLE :
----------------------
create table doctors1 (
   doctor_id number,
   d_name    varchar2(30),
   specialty varchar2(15)
);

insert into doctors1 values ( 121,
                             'DR.MADHU PRIYA',
                             'Cardiologist' );
commit;

insert into doctors1 values ( 122,
                             'DR.MADHU PRIYA',
                             ' specialty' );
commit;

update doctors1
   set
   doctor_id = 121
 where specialty = ' specialty';

insert into doctors1 values ( 123,
                             'DR.GANGI REDDY',
                             'ENT Specialist' );
commit;

insert into doctors1 values ( 124,
                             'DR.NARAYANA REDDY',
                             'Ophthalmologist' );
commit;
update doctors1
   set
   doctor_id = 122
 where specialty = ' specialty';


update doctors1
   set
   doctor_id = 123
 where specialty = 'ENT Specialist';

select *
  from doctors1
 order by doctor_id;

--appointments (appointment_id, patient_id, doctor_id, appointment_date)

create table appointments (
   appointment_id   number,
   doctor_id        number,
   appointment_date date,
   patient_id number
);

alter table APPOINTMENTS
rename column patient_id to paitent_id;

alter table appointments add patient_id number;

update appointments
   set
   patient_id = 122
 where doctor_id = 121;


insert into appointments values ( 1001,
                                  121,
                                  to_date('12/05/2025','DD/MM/YYYY'),
                                  122 );
commit;

insert into appointments values ( 1001,
                                  121,
                                  to_date('12/12/2024','DD/MM/YYYY'),
                                  125 );
commit;

insert into appointments values ( 1001,
                                  121,
                                  to_date('15/04/2025','DD/MM/YYYY'),
                                  121 );
commit;

insert into appointments values ( 1001,
                                  121,
                                  to_date('02/04/2025','DD/MM/YYYY'),
                                  124 );

commit;
insert into appointments values ( 1001,
                                  121,
                                  to_date('10/07/2024','DD/MM/YYYY'),
                                  123 );

commit;

select *
  from appointments;

update appointments
   set
   doctor_id = 122
 where patient_id = 124;


update appointments
   set
   doctor_id = 123
 where patient_id = 121;


update appointments
   set
   doctor_id = 124
 where patient_id = 122;


update appointments
   set
   doctor_id = 125
 where patient_id = 123;

select *
  from appointments;


--Find the names of patients who have appointments scheduled.

select distinct p.p_name
  from appointments a
  join patients p
on a.paitent_id = p.paitent_id;

SELECT DISTINCT P.P_NAME
FROM APPOINTMENTS A
JOIN PAITENTS P ON A.PATIENT_ID = P.PAITENT_ID;

--List patients along with their respective doctor names and appointment dates.

SELECT p.p_name,d.d_name,a.appointment_date
from APPOINTMENTS a
join PAITENTS p on a.paitent_id = p.paitent_id
join DOCTORS1 d on a.DOCTOR_ID = d.doctor_id;

--Find all appointments scheduled in April 2025.

select * from APPOINTMENTS
where TO_CHAR (APPOINTMENT_DATE,'mm-yyyy') = '04-2025';

--Get the list of patients who have appointments with 'DR.MADHU PRIYA'.

select p.p_name,a.appointment_date
from APPOINTMENTS a
join doctors1 d on A.doctor_id = D.DOCTOR_ID
join PAITENTS p on a.paitent_id = p.PAITENT_ID
where d.d_name = 'DR.MADHU PRIYA'; 

;
--Find the appointment dates for patient KRISHNA.

select a.appointment_date
from APPOINTMENTS a
join paitents p on a.paitent_id = p.paitent_id
where p.p_name = 'KRISHNA';

--Which doctor has the most appointments?

SELECT D.d_name,COUNT(*) AS NUM_APPOINTMENTS
FROM APPOINTMENTS A
JOIN DOCTORS1 D ON A.DOCTOR_ID = d.doctor_id
GROUP BY D.d_name
ORDER BY NUM_APPOINTMENTS;


SELECT * FROM appointments
ORDER BY appointment_date
FETCH FIRST 1 ROWS ONLY;

SELECT * FROM appointments
WHERE EXTRACT(YEAR FROM appointment_date) = 2025;

SELECT * FROM appointments
WHERE EXTRACT(YEAR FROM appointment_date) = 2024;

--create sequence on appointment_dates

-- Create a sequence for appointment IDs
CREATE SEQUENCE seq_appointment_id
START WITH 2000
INCREMENT BY 1
NOCACHE;

-- Use it in an insert:
INSERT INTO appointments (
    appointment_id,
    doctor_id,
    appointment_date,
    paitent_id
) VALUES (
    seq_appointment_id.NEXTVAL,
    123,
    TO_DATE('01/06/2025', 'DD/MM/YYYY'),
    121
);

COMMIT;

select * from appointments;

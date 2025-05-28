--hotel booking system
------------------------
--rooms;
----------
CREATE TABLE ROOMS (
    ROOM_ID   NUMBER PRIMARY KEY,
    TYPE    VARCHAR2(20),
    RATE      NUMBER(10, 2),
    STATUS  VARCHAR2(20)
);


INSERT INTO rooms values(101,'AC',5000,'availble');

commit;

INSERT INTO rooms values(102,'AC',5000,'availble');

commit;

INSERT INTO rooms values(103,'not_AC',3500,'not_A');

commit;

INSERT INTO rooms values(104,'AC',5000,'not_A');

commit;

INSERT INTO rooms values(105,'non-AC',3500,'not_A');

commit;

select * from rooms;

--customers:
-------------

CREATE TABLE CUSTOMERS1 (
    CUSTOMER_ID NUMBER,
    NAME        NUMBER,
    CONTACT     NUMBER
);

ALTER TABLE customers1
MODIFY name VARCHAR2(30);


insert into CUSTOMERS1 values (101,'deva',0987654321);

commit;

insert into CUSTOMERS1 values (102,'raju',1234567890);

commit;

insert into CUSTOMERS1 values (103,'siva',6543217890);

commit;

insert into CUSTOMERS1 values (104,'prakash',9085756421);

COMMIT;

select * from CUSTOMERS1;

--bookings

CREATE TABLE BOOKINGS (
    BOOKING_ID    NUMBER,
    ROOM_ID       NUMBER,
    CUSTOMER_ID   NUMBER,
    CHECKIN_DATE  DATE,
    CHECKOUT_DATE DATE
);

INSERT INTO BOOKINGS VALUES ( 1001,
                              101,
                              102,
                              TO_DATE('10-07-2025', 'DD-MM-YYYY'),
                              TO_DATE('15-07-2025', 'DD-MM-YYYY') );
commit;
         
INSERT INTO BOOKINGS VALUES ( 1002,
                              102,
                              103,
                              TO_DATE('01-07-2025', 'DD-MM-YYYY'),
                              TO_DATE('10-07-2025', 'DD-MM-YYYY') );                     

commit;

INSERT INTO BOOKINGS VALUES ( 1003,
                              103,
                              104,
                              TO_DATE('12-08-2025', 'DD-MM-YYYY'),
                              TO_DATE('14-08-2025', 'DD-MM-YYYY') );

 commit;               

INSERT INTO BOOKINGS VALUES ( 1004,
                              104,
                              105,
                              TO_DATE('11-12-2025', 'DD-MM-YYYY'),
                              TO_DATE('15-12-2025', 'DD-MM-YYYY') );

commit;

INSERT INTO BOOKINGS VALUES ( 1005,
                              105,
                              101,
                              TO_DATE('25-10-2025', 'DD-MM-YYYY'),
                              TO_DATE('01-11-2025', 'DD-MM-YYYY') );
COMMIT;

SELECT * FROM BOOKINGS;

select * from rooms;

select * from customers1;

--which room booked most times

SELECT room_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY room_id
ORDER BY total_bookings DESC;

 --find rooms available from 2025-07-12 to 2025-07-14.

SELECT r.room_id, r.type, r.rate, r.status
FROM rooms r
WHERE r.room_id NOT IN (
    SELECT b.room_id
    FROM bookings b
    WHERE 
        b.checkin_date < TO_DATE('12-07-2025', 'DD-MM-YYYY')
        AND
        b.checkout_date > TO_DATE('14-07-2025', 'DD-MM-YYYY')
);


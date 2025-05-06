--partition view

create table sales_2023(
    sales_id number,
    amount number,
    sales_date date
);

ALTER TABLE sales_2023
ADD CONSTRAINT s23_chck CHECK ( SALES_DATE >= TO_DATE('01-01-2023', 'DD-MM-YYYY')
                                                       AND(sales_date <= TO_DATE ( '01-01-2024' , 'DD-MM-YYYY' )));

create table sales_2024(
    sales_id number,
    amount number,
    sales_date date
);

ALTER TABLE sales_2024
ADD CONSTRAINT s24_chck CHECK ( SALES_DATE >= TO_DATE('01-01-2024', 'DD-MM-YYYY')
                                                       AND(sales_date <= TO_DATE ( '01-01-2025' , 'DD-MM-YYYY' )));


create table sales_2025(
    sales_id number,
    amount number,
    sales_date date

);


ALTER TABLE sales_2025
ADD CONSTRAINT s25_chck CHECK ( SALES_DATE >= TO_DATE('01-01-2025', 'DD-MM-YYYY')
                                                       AND(sales_date <= TO_DATE ( '01-01-2026' , 'DD-MM-YYYY' )));




SELECT  sales_id, 
    amount ,
    sales_date 
 FROM sales_2023

 UNION ALL

  SELECT  sales_id ,
    amount ,
    sales_date 
 FROM sales_2024

UNION ALL

SELECT  sales_id , 
    amount ,
    sales_date 
 FROM sales_2025

-----------------------------------


SELECT  *
 FROM sales_2023

 UNION ALL
 
SELECT  * 
 FROM sales_2024

 UNION ALL
 
SELECT  *
 FROM sales_2025;



 create VIEW SALES_V 
 AS 
 SELECT  *
 FROM sales_2023

 UNION ALL
 
SELECT  * 
 FROM sales_2024

 UNION ALL
 
SELECT  *
 FROM sales_2025;

 SELECT * FROM SALES_V;


 --materialized view
------------------------------

 create table emp_v
 AS
 SELECT * from xxnyb_views;


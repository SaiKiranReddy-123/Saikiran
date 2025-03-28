--calculate salary* comission_pct for all employees and name it as salary_commission

select e.employee_id,
       e.first_name,
       e.last_name,
       e.salary,
       e.commission_pct,
       e.salary * e.commission_pct salary_commission
       --e.salary * NVL(e.commission_pct, 0) salary_commission_nvl
  from hr.employees e;
  
  select e.department_id, SUM(e.salary*e.commission_pct) sum_salary_commission
    from hr.employees e
    group by e.department_id;
    
    
  select SUM(e.salary*e.commission_pct) total_salary_commission,
         SUM(e.salary* NVL(e.commission_pct, 0)) total_salary_commission_nvl
    from hr.employees e;


 select NULL + 5600 from dual;


 select greatest (salary) from hr.employees;


select employee_id,first_name,salary,greatest((salary*0.10),(commission_pct*salary))bonus from hr.employees;


SELECT LEAST ( 10 , 20 , 30 , 40 , 69 ) FROM DUAL ;


--Character Functions
--LENGTH

SELECT
    length('79384bfrjbsfhgvb888834345405u9ujhviufugvbndfsiubvndfuo843985knjvf89ghv8')
FROM
    dual;

--REVERSE

SELECT
    reverse('SAI.')
FROM
    dual;


--UPPER

SELECT
    upper('sai')
FROM
    dual;
 
--LOWER

SELECT
    lower('SAI')
FROM
    dual;
    
--INITCAP

SELECT
    initcap('sai'),
    initcap('kiran')
FROM
    dual;

--CONCAT
--s1 = 'Oracle'
--s2 = 'E-Business Suite'

SELECT
    concat('Oracle', 'E-Business Suite')
FROM
    dual;
    
SELECT
    'Oracle'||'E-Business Suite'
FROM
    dual;
    
--s1 = 'Oracle'
--s2 = ' '
--s3 = 'E-Business Suite'

SELECT
    'Oracle'||' '||'E-Business Suite'
FROM
    dual;

SELECT
    '12'
    || ' '
    || '34'
    || ' '
    || '56'
    || ' '
    || '78'
    || ' '
    || '90'
FROM
    dual;
    
--TRIM
--s = eeeeeeeeekiraneeeeeeeeeeeee
--c = e

SELECT
    TRIM('e' FROM 'eeeeeeeeekiraneeeeeeeeeeeee')
FROM
    dual;

--s = eeeeeekiraneeeeeeeeeeeee    

SELECT
    TRIM('e' FROM 'eeeeeeUieeekiraneeeeeeYaeeeeeee')
FROM
    dual;

--s = ekiranee   

SELECT
    TRIM('e' FROM 'lllkiranee')
FROM
    dual;
    
--s = '       kiran  '

SELECT
    TRIM('       kiran  ')
FROM
    dual;  --kiran
    
    
--LTRIM
--s = eeeeeeeeekiraneeeeeeeeeeeee
--c = e
    
SELECT
    ltrim('eeeeeeeeekiraneeeeeeeeeeeee', 'e')
FROM
    dual;
    
SELECT
    ltrim('       kiran  ')
FROM
    dual;   --'kiran  '
    
--RTRIM   
--s = eeeeeeeeekiraneeeeeeeeeeeee
--c = e

SELECT
    rtrim('eeeeeeeeekiraneeeeeeeeeeeee', 'e')
FROM
    dual;
    
SELECT
    rtrim('       kiran  ')
FROM
    dual;   --'       kiran'


select employee_id,first_name,decode(first_name,'Steven','Stev','Neena','Nee','Bruce','Bru','common_name')changed_name
 from hr.employees
  order by employee_id;
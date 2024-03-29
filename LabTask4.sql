use hr;

select employee_id, job_id ,
CASE

WHEN job_id = 'IT_PROG' THEN 'DEVELOPER'
WHEN job_id = 'ST_MAN' THEN 'MANAGER'
WHEN job_id = 'SA_REP' THEN 'SALES REPRESENTATIVE'
ELSE 'OTHER'

END AS 'Job Description'
from employees;

select max(salary) AS 'MAX_SALARY' from employees;
select min(salary) AS 'MIN_SALARY' from employees;
select avg(salary) AS 'AVG_SALARY' from employees;

select job_id, count(*) AS 'No.of Employees' from employees 
group by job_id;


select job_id, count(*) AS 'No.of Employees' from employees 
group by job_id;

select max(salary) AS 'MAX_SALARY', min(salary) AS 'MIN_SALARY' , avg(salary) AS 'AVG_SALARY' from employees;


select max(salary) AS 'MAX_SALARY', min(salary) AS 'MIN_SALARY' , avg(salary) AS 'AVG_SALARY' , job_id, count(*) AS 'No.of Employees' from employees 
group by job_id;



select job_id, count(*) AS 'No.of Employees' , max(salary) AS 'MAX_SALARY', min(salary) AS 'MIN_SALARY' , avg(salary) AS 'AVG_SALARY'  from employees 
group by job_id;

select job_id,department_id, count(*) AS 'No.of Employees' from employees 
group by job_id,department_id;

select employee_id from employees where employee_id != (select employee_id where manager_id BETWEEN 100 AND 200);

select employee_id, first_name+last_name AS 'Name', job_id from employees where salary < (
select salary from employees where job_id = 'MK_MAN') ;


select * from employees where salary BETWEEN (select min(salary) from employees) AND 2500;

select * from employees where salary = (select max(salary)
         from employees where salary < (select max(salary) from employees));

select employee_id, first_name+' '+ last_name AS 'fullName' , salary from employees
      where salary > (select Avg(salary) from employees) AND 
	  department_id IN (select department_id from departments where first_name LIKE '%[aj]%' ) ;

select job_id, count(employee_id) AS 'No.of Employees' from employees
Group BY job_id 
HAVING count(employee_id) > 5;
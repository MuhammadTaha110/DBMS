use hr;

select * from employees;
select * from regions;
select * from jobs;
select * from locations;
select * from departments;



select distinct first_name,email from employees;
select first_name from employees;


select employee_id, first_name , last_name , salary , commission_pct,(salary * commission_pct) AS 'comission_PCT',salary + (salary * commission_pct) AS 'total_Salary'  from employees;


select top 3 first_name,last_name,email from employees;

select top 3 first_name,last_name,email from employees order by 1 desc;

select distinct top 3 first_name from employees order by 1 desc;

select last_name,salary,first_name from employees where first_name='yasir' AND last_name= 'hussain' AND salary >= 30000;


select first_name+' '+last_name AS full_Name , salary from employees where salary < 6000;

select * from employees where commission_pct is not null;

select * from employees where department_id = 60 order by first_name desc; 

select first_name,last_name,department_id,salary  from employees where (salary > 80000 AND department_id >0) AND last_name = 'arif';
select first_name,last_name,department_id,salary  from employees where last_name='McEwen';

select first_name,last_name,department_id,salary  from employees where department_id is null;
select first_name,last_name,department_id,salary  from employees where department_id is not null;

select * from employees where salary between 3000 AND 10000;


select employee_id,first_name,last_name,department_id,hire_date, salary  from employees where hire_date between '1990' AND '2000';
select first_name,last_name,department_id,hire_date, salary  from employees where employee_id between 55 AND 125;




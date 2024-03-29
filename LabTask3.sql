use hr;

select salary,first_name,last_name from employees where salary between 9000 AND 17000;
select salary,first_name,last_name from employees where  salary not between 9000 AND 17000;

select * from employees where salary in (6000,8000,9000,17000,20000);
select first_name, last_name from employees where department_id IN (70,90)  ;

select first_name, last_name from employees where (salary Between 8000 AND 12000) AND (commission_pct is not null) AND ( hire_date > '1985-06-05') AND (department_id  not IN(40,120,70));

select  * from employees where first_name LIKE 'a%';

select  * from employees where first_name LIKE '%d';

select  * from employees where first_name LIKE '%a%';

select  * from employees where first_name LIKE '_a%';

select  * from employees where first_name LIKE '%a_';

select  * from employees where first_name LIKE '%[ta]';

select  * from employees where first_name LIKE 'a[d,a]a%';

select  first_name, last_name , salary from employees where first_name LIKE '%m';

select  first_name, last_name , salary from employees where first_name LIKE '%m';
select  first_name + ' ' + last_name AS fullname , salary, department_id from employees where first_name NOT LIKE '%m';

select  * from employees where first_name LIKE '%[d,s,n]%';

select  first_name , last_name , department_id from employees where first_name LIKE '__s%';

select * from employees where job_id = (select job_id from employees where employee_id = 163);

select first_name,last_name FROM employees where salary > (select salary from employees where employee_id=169);

select * from employees where department_id NOT IN (select department_id from departments where manager_id between 100 and 200);
 
select employee_id, first_name +' '+last_name AS fullname from employees where department_id IN (select department_id from departments where (first_name+last_name) LIKE '%[t%' );
/* Question 1: 

write a SQL query to find those employees whose salaries are less than 6000. 
Return full name (first and last name), and salary.*/

SELECT first_name+' '+last_name AS Full_Name, salary FROM employees WHERE salary < 6000 ;

--*********************************************
--Explanation : 

--SELECT is used to return columns from table
-- + Operator is used here to concatinate first and last name
-- AS keyword is used as new column name which contain concatinated first and last name
--FROM is ued for telling table name where to fetch column
-- WHERE is used for conditional statements
--*********************************************


/* Question 2:

write a SQL query to find those employees whose salary is higher than 8000. 
Return first name, last name and department number and salary.*/

SELECT first_name, last_name, department_id, salary FROM employees WHERE salary > 8000 ;

--*********************************************
--Explanation :

--SELECT is used to return columns from table
--FROM is ued for telling table name where to fetch column
-- WHERE is used for conditional statements
--******************************************

/* Question 3:

write a SQL query to find those employees whose last name is "McEwen". 
Return first name, last name and department ID.*/

SELECT first_name, last_name, department_id FROM employees WHERE last_name = 'McEwen';

--*********************************************
--Explanation :

--SELECT is used to return columns from table
--FROM is ued for telling table name where to fetch column
-- WHERE is used for conditional statements to select employee having last name as Mc Even
--******************************************

/*Question 4: 

write a SQL query to identify employees who do not have a department number. Return employee_id,
first_name, last_name, email, phone_number, hire_date, job_id, salary,commission_pct, manager_id
and department_id.*/

SELECT  employee_id, first_name, last_name, email, phone_number , hire_date, job_id , salary, commission_pct, manager_id, department_id FROM employees WHERE department_id IS NULL;

--Explanation :

--IS NULL is used to find wthether the field is null or not
--******************************************


/*Question 5: 
write a SQL query to find those employees whose first name does not contain the letter ‘M’.Return full
name (first and last name together), hire_date, salary and department_id. */


SELECT first_name+' '+last_name AS Full_Name,hire_date, salary, department_id FROM employees WHERE first_name NOT LIKE('%M%');

--*********************************************
--Explanation : 

-- LIKE operator with (%M%) is used for find first name containing letter M
-- NOT will inverse it 
-- + Operator is used here to concatinate first and last name
-- AS keyword is used as new column name which contain concatinated first and last name
--*********************************************

/*Question 6:
write a SQL query to find those employees who do not earn any commission. Return full name (first and
last name), and salary.*/

SELECT first_name+' '+last_name AS Full_Name, salary FROM employees WHERE commission_pct IS NULL;

--Explanation :

--IS NULL is used to find wthether the field is null or not
--******************************************

/*Question 7:
write a SQL query to find the employees whose salary is in the range 9000,17000 (Begin and end values
are included). Return full name, contact details and salary.
*/

SELECT first_name+' '+last_name AS Full_Name,contact, salary FROM employees WHERE salary BETWEEN 9000 AND 17000;

--Explanation :

--BETWEEN oprator is used to find values betwwn range
-- start and end range differentate by AND operator
--******************************************

/*Question 8:
write a SQL query to find the employees whose first name ends with the letter ‘m’. Return the first and
last name, and salary.*/

SELECT first_name, last_name, salary FROM employees WHERE first_name LIKE ('%m');
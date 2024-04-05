--Select, Set and Print

DECLARE @Name AS VARCHAR(100), @Age AS INT, @University AS VARCHAR(120);

SET @Age = 20;
--SELECT @Name = 'Muhammad Taha Talib', @University = 'SZABIST';

--PRINT 'Hello World';

/*
PRINT @Name;
PRINT @Age;
PRINT @University;
*/

--SELECT @Name AS Student_Name , @Age AS Age, @University AS University;


DECLARE @num1 AS INT, @num2 AS INT;

SELECT @num1 =6, @num2 = 10;

SET @num2 +=100;

/*

SELECT @num1+@num2 AS 'SUM', @num1-@num2 AS 'DIFF',
       @num1*@num2 AS 'MUL', @num1/@num2 AS 'DIV' ,
	   @num1%@num2 AS 'MOD';

	   
	
IF(@num1 < @num2)

	BEGIN
		PRINT 'NUM2 is Greater';
	END

ElSE
	PRINT 'NUM1 is Greater';
	
*/

/*

DECLARE @Marks AS INT;
SET @Marks = 95;


IF (@Marks>=80)	
	BEGIN
		IF(@Marks>=90)
			PRINT 'A+';
        ELSE
			PRINT 'A-';
	END

ELSE
	PRINT 'FAIL';


DECLARE @count AS INT;
SET @count = 10;

WHILE (@count<=30)	
	BEGIN
		PRINT @count;
		SET @count+=10;

		IF @count=30 CONTINUE;
	END

	*/

USE HR;
--SELECT * FROM employees WHERE first_name = 'Alexander';

--SELECT first_name, last_name, salary FROM employees WHERE salary>1000;

SELECT first_name+' '+last_name AS FullName from employees;
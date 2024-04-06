
--BuiltIn Functions

--Strings Functions

--Return index of a character first occurence (index starts with 1)
SELECT CHARINDEX ('a','taha');

--Concatenation without + Operator
--Concat Multiple Strings
SELECT CONCAT('Muhammad',' ','Taha','Talib') AS fullName;  

SELECT CONCAT_WS(' ','Muhammad','Taha','Talib') AS [Full Name];

SELECT UPPER ('muhammad') AS UpperCase , LOWER ('TAHa') AS LowerCase;

--Finds Legth of a String
SELECT LEN ('Muhammad Taha Talib');
SELECT DATALENGTH ('Muhammad Taha Talib');

SELECT LEFT('Muhammad',5);
SELECT RIGHT('Muhammad',4);

--Format
SELECT FORMAT(4200000000000,'#####-#######-#') AS 'CNIC';

--SubStrings
SELECT SUBSTRING('Muhammad',5,4);

--Reverse
SELECT REVERSE('ABC') AS ReversedString;

--Replicate
SELECT REPLICATE('MUHAMMAD ',12);

--Replace
SELECT REPLACE ('Mohammad Taha Talib','Mohammad','Muhammad') AS ReplacedString;

--Numeric Functions

SELECT ROUND(97.676788939937497,4) AS ROUNDNUM , ABS(568.3388383) AS ABSOLUTENUM
, CEILING(876.8788) AS CEIL , FLOOR(876.8788) AS FLOORNUM , POWER(5,2) AS POWERNUM
, SQRT(16) AS SQROOT, RAND() AS RANDOMNUM, 

--RETURN Trignometric Values
SIN(45) AS SinTheta, COS(90) AS CosTheta, TAN (30) AS Tangent ;

--Date/Time Functions

SELECT CURRENT_TIMESTAMP;

--Can Increase DAY,MONTH or YEAR of a Specific Date
SELECT DATEADD (DAY,1,'2024/04/06');

--Can Count Days,Months,Years etc
SELECT DATEDIFF(DAY,'2003/10/09',CURRENT_TIMESTAMP);

SELECT DATEFROMPARTS(2024,06,4);

SELECT DAY(GETDATE()),MONTH(GETDATE()),YEAR(GETDATE());

USE hr;
SELECT first_name,last_name,salary, IIF(salary>17000,'HIGH','LOW') AS 'SALARY' FROM employees;

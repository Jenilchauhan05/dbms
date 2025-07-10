CREATE TABLE EMP ( EID INT, ENAME VARCHAR(25), DEPARTMENT VARCHAR(25), SALARY INT, JOININGDATE DATE, CITY VARCHAR(25), GENDER VARCHAR(25) )

INSERT INTO EMP ( EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER ) VALUES ( 101, 'RAHUL', 'ADMIN', 56000, '1990-01-01', 'RAJKOT', 'MALE' )
INSERT INTO EMP ( EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER ) VALUES ( 102, 'HARDIK', 'IT',18000, '1990-09-25', 'AHMEDABAD', 'MALE' )
INSERT INTO EMP ( EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER ) VALUES ( 103, 'BHAVIN', 'HR', 25000, '1991-05-14', 'BARODA', 'MALE' )
INSERT INTO EMP ( EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER ) VALUES ( 104, 'BHOOMI', 'ADMIN', 39000, '1991-02-08', 'RAJKOT', 'FEMALE' )
INSERT INTO EMP ( EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER ) VALUES ( 105, 'ROHIT', 'IT', 17000, '1990-07-23', 'JAMNAGAR', 'MALE' )
INSERT INTO EMP ( EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER ) VALUES ( 106, 'PRIYA', 'IT', 9000, '1990-10-18', 'AHMEDABAD', 'FEMALE' )
INSERT INTO EMP ( EID, ENAME, DEPARTMENT, SALARY, JOININGDATE, CITY, GENDER ) VALUES ( 107, 'BHOOMI', 'HR', 34000, '1990-12-25', 'RAJKOT', 'FEMALE' )

SELECT * FROM EMP

--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.

SELECT MAX(SALARY) AS MAXIMUM, MIN(SALARY) AS MINIMUM
FROM EMP 

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.

SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL
FROM EMP

--3. Find total number of employees of EMPLOYEE table.

SELECT COUNT(EID) AS TOTAL
FROM  EMP

--4. Find highest salary from Rajkot city

SELECT MAX(SALARY) AS HIGHEST
FROM EMP
WHERE CITY = 'RAJKOT'

--5. Give maximum salary from IT department.

SELECT MAX(SALARY) AS HIGH_IT
FROM EMP
WHERE DEPARTMENT = 'IT'

--6. Count employee whose joining date is after 8-feb-91.

SELECT COUNT(EID) 
FROM EMP
WHERE JOININGDATE > '1991-02-08'

--7. Display average salary of Admin department.

SELECT AVG (SALARY)
FROM EMP 
WHERE DEPARTMENT = 'ADMIN'

--8. Display total salary of HR department.

SELECT SUM (SALARY)
FROM EMP
WHERE DEPARTMENT = 'HR'

--9. Count total number of cities of employee without duplication.

SELECT COUNT (DISTINCT CITY)
FROM EMP

--10. Count unique departments.

SELECT COUNT (DISTINCT DEPARTMENT)
FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.

SELECT MIN(SALARY) AS MIN_SAL
FROM EMP
WHERE CITY = 'AHMEDABAD'

--12. Find city wise highest salary.

SELECT CITY, MAX(SALARY)
FROM EMP
GROUP BY CITY

--13. Find department wise lowest salary.

SELECT DEPARTMENT, MIN(SALARY)
FROM EMP
GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.

SELECT CITY, COUNT(EID)
FROM EMP
GROUP BY CITY

--15. Give total salary of each department of EMP table.

SELECT DEPARTMENT, SUM(SALARY)
FROM EMP
GROUP BY DEPARTMENT

--16. Give average salary of each department of EMP table without displaying the respective department name.

SELECT AVG (SALARY)
FROM EMP
GROUP BY DEPARTMENT

--17. Count the number of employees for each department in every city.

SELECT DEPARTMENT, CITY, COUNT(EID)
FROM EMP
GROUP BY DEPARTMENT, CITY

--18. Calculate the total salary distributed to male and female employees.

SELECT GENDER, SUM(SALARY)
FROM EMP
GROUP BY GENDER

--19. Give city wise maximum and minimum salary of female employees.

SELECT CITY, MAX(SALARY), MIN(SALARY)
FROM EMP
GROUP BY CITY

--20. Calculate department, city, and gender wise average salary.
--Part – B:
--1. Count the number of employees living in Rajkot.
--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
--3. Display the total number of employees hired before 1st January, 1991.
--Part – C:
--1. Count the number of employees living in Rajkot or Baroda.
--2. Display the total number of employees hired before 1st January, 1991 in IT department.
--3. Find the Joining Date wise Total Salaries.
--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.
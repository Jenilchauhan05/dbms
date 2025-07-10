--lab 5 :
--from the above given tables perform the following queries (ALTER, RENAME Operation):
--1. Add two more columns City VARCHAR (20) and Pincode INT.

ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20), PINCODE INT

SELECT * FROM DEPOSIT

--2. Add column state VARCHAR(20).

ALTER TABLE DEPOSIT
ADD STATE VARCHAR(20)

SELECT * FROM DEPOSIT

--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35)

--4. Change the data type DECIMAL to INT in amount Column.

ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

--5. Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSIT
DROP COLUMN CITY

--6. Rename Column ActNo to ANO.

SP_RENAME 'DEPOSIT.ACTNO', 'DEPOSIT.ANO'

--7. Change name of table DEPOSIT to DEPOSIT_DETAIL.

SP_RENAME 'DEPOSIT', 'DEPOSIT_DETAIL'

--Part – B:
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.

SP_RENAME 'DEPOSIT_DETAIL.ADATE', 'AOPENDATE'

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.

ALTER  TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName.

SP_RENAME 'DEPOSIT_DETAIL.CNAME', 'CUSTOMER'

--4. Add Column country.

ALTER TABLE DEPOSIT_DETAIL
ADD COUNTRY VARCHAR(20)

--PART C :

CREATE TABLE STUDENT_DETAIL ( ENROLLMENT_NO VARCHAR(20), NAME VARCHAR(25), CPI DECIMAL(5, 2), BIRTHDATE DATE ) 

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).

ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20) NOT NULL, BACKLOG INT NULL

--2. Add column department VARCHAR (20) Not Null.

ALTER TABLE STUDENT_DETAIL
ADD DEPARTMENT VARCHAR(20) NOT NULL 

--3. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).

ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35)

--4. Change the data type DECIMAL to INT in CPI Column.

ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT

--5. Delete Column City from the student_detail table.

ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY

--6. Rename Column Enrollment_No to ENO.

SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO', 'ENO'

--7. Change name of table student_detail to STUDENT_MASTER.

SP_RENAME 'STUDENT_DETAIL', 'STUDENT_MASTER'

--PART A :
--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000. 

DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT <= 4000

SELECT * FROM DEPOSIT_DETAIL

--2. Delete all the accounts CHANDI BRANCH.

 DELETE FROM DEPOSIT_DETAIL
 WHERE BNAME = 'CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105.

DELETE FROM DEPOSIT_DETAIL
WHERE ANO > 102 AND ANO < 105

--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’

DELETE FROM DEPOSIT_DETAIL
WHERE BNAME = 'AJNI' OR BNAME = 'POWAI'

--5. Delete all the accounts whose account number is NULL.

DELETE FROM DEPOSIT_DETAIL
WHERE ANO IS NULL

--6. Delete all the remaining records using Delete command.

DELETE FROM DEPOSIT_DETAIL
WHERE 1=1

--7. Delete all the records of Deposit_Detail table. (Use Truncate)

TRUNCATE TABLE DEPOSIT_DETAIL

--8. Remove Deposit_Detail table. (Use Drop)

drop table deposit_detail
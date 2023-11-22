/* ACTIVITY 1 */      


CREATE DATABASE SCHOOL;
USE SCHOOL;
CREATE TABLE STUDENT(
	StdID INT PRIMARY KEY,
    StdName VARCHAR(50),
	Sex ENUM ('MALE', 'FEMALE', 'OTHER') NOT NULL,
    Percentage DECIMAL(5,2) CHECK (Percentage >= 0 AND Percentage <=100),
    Class INT CHECK (Class IN (11, 12)),
    Sec CHAR(1),
    Stream VARCHAR(255),
    DOB DATE
);

INSERT INTO STUDENT
	(StdID, StdName, Sex, Percentage, Class, Sec, Stream, DOB)
    Values
    (1001, 'AKSHRA AGARWAL', 'FEMALE', 70, 11, 'A', 'Science', '1996-11-10'),
    (1002, 'ANJALI SHARMA', 'FEMALE', 75, 11, 'A', 'Commerce', '1996-09-18'),
    (1003, 'ANSHUL SAXENA', 'MALE', 78, 11, 'A', 'Commerce', '1996-11-19'),
    (1004, 'AISHWARYA SINGH', 'FEMALE', 79, 11, 'A', 'Commerce', '1996-11-01'),
    (1005, 'AKRITI SAXENA', 'FEMALE', 76, 11, 'A', 'Commerce', '1996-09-20'),
    (1006, 'KHUSHI AGARWAL', 'FEMALE', 77, 11, 'A', 'Commerce', '2003-09-14'),
    (1007, 'MAAHI AGARWAL', 'FEMALE', 74, 11, 'A', 'Science', '1997-04-21'),
    (1008, 'MITALI GUPTA', 'FEMALE', 78, 12, 'A', 'Science' , '1997-11-26'),
    (1009, 'NIKUNG AGARWAL', 'MALE', 58, 12, 'A', 'Science', '1997-07-12'),
    (1010, 'PARKHI', 'FEMALE', 59, 12, 'A', 'Commerce', '1997-12-20'),
    (1011, 'PRAKHAR TIWARI', 'MALE', 43, 12, 'A', 'Science', '1997-04-22'),
    (1012, 'RAGHAV GANGWAR', 'MALE', 58, 12, 'A', 'Commerce', '1997-12-21'),
    (1013, 'SAHIL SARASWAT', 'MALE', 57, 12, 'A', 'Commerce', '1997-08-13'),
    (1014, 'SWATI MISHRA', 'FEMALE', 98, 11, 'A', 'Science', '1996-08-13'),
    (1015, 'HARSH AGARWAL', 'MALE', 58, 11, 'B', 'Science', '2003-08-28'),
    (1016, 'HARSHIT KUMAR', 'MALE', 98, 11, 'B', 'Science', '2003-05-22'),
    (1017, 'JAHANVI KAPOOR', 'MALE', 65, 11, 'B', 'Science', '1997-01-10'),
    (1018, 'STUTI MISHRA' , 'MALE', 66, 11, 'C', 'Commerce', '1996-01-10'),
    (1019, 'SURYANSH KUMAR AGARWAL', 'MALE', 85, 11, 'C', 'Commerce', '2007-08-22'),
    (1020, 'TANI RASTOGI', 'FEMALE', 75, 12, 'C', 'Commerce', '1998-01-15'),
    (1021, 'TANISHK GUPTA', 'MALE', 55, 12, 'C', 'Science', '1998-04-11'),
    (1022, 'TANMAY AGARWAL', 'MALE', 57, 11, 'C', 'Commerce', '1998-06-28'),
    (1023, 'YASH SAXENA', 'MALE', 79, 11, 'C', 'Science', '1998-03-13'),
    (1024, 'YESH DUBEY', 'MALE', 85, 12, 'C', 'Commerce', '1998-04-3');
    
    
SELECT
    StdID,
    StdName,
    Sex,
    Percentage,
    Class,
    Sec,
    Stream,
    DATE_FORMAT(DOB, '%d/%m/%Y') AS DOB
FROM STUDENT;




/* ACTIVITY 2 */

SELECT * FROM STUDENT;

SELECT StdName, DOB 
FROM STUDENT;

SELECT * 
FROM STUDENT
WHERE Percentage >=80;

SELECT StdName, Stream, Percentage
FROM STUDENT
WHERE Percentage >= 80;

SELECT *
FROM STUDENT
WHERE Stream = 'Science' AND Percentage > 75;




/* ACTIVITY 3 */

DESCRIBE STUDENT;
DESC STUDENT;

ALTER TABLE STUDENT
ADD TeacherID VARCHAR(20);

DESC STUDENT;

SELECT * FROM STUDENT;

ALTER TABLE STUDENT
MODIFY COLUMN TeacherID INT;




/* ACTIVITY 4 */

ALTER TABLE STUDENT
DROP COLUMN TeacherID;

SELECT StdName, (Percentage - 5) As ModifiedPercentage
FROM STUDENT;


SELECT StdNAME AS "Student Name", DOB AS "Date of Birth"
FROM STUDENT;



SELECT StdName
FROM STUDENT
WHERE Stream != 'Science';


SELECT StdName, Percentage
FROM STUDENT
WHERE PERCENTAGE BETWEEN 60 AND 80;




/* ACTIVITY 5 */

UPDATE STUDENT
SET StdName = 'SWATI VERMA', Percentage = 86
WHERE StdID = 1014;

DELETE FROM STUDENT
WHERE StdID = 1016;

SELECT * FROM STUDENT WHERE StdName LIKE'G_';
SELECT * FROM STUDENT WHERE StdName='G';
SELECT * FROM STUDENT WHERE StdName LIKE 'G%';
SELECT * FROM Student WHERE StdName='%G%';

SELECT Stream FROM STUDENT;

SELECT StdName, Sex, Stream
FROM STUDENT
WHERE Percentage BETWEEN 70 AND 80;





/* NEW DATABASE EMPLOYEE */

CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE Empl(
	empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal  DECIMAL(20, 2) CHECK (sal >= 0),
    comm DECIMAL(20, 2) CHECK (comm >= 0),
    deptno INT
);
	
INSERT INTO Empl
	(empno, ename, job, mgr, hiredate, sal, comm, deptno)
    VALUES
    (8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20),
    (8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30),
    (8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
    (8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20),
    (8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
    (8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30),
    (8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10),
    (8888, 'SCOOT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20),
    (8839, 'AMIR', 'PRESINDENT', NULL, '1991-11-18', 5000.00, NULL, 10),
    (8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);


SELECT ename, sal
FROM EMPL
WHERE sal >= 2200;

SELECT * 
FROM EMPL
WHERE comm IS NULL; -- IS NULL TO CHECK NULL VALUES , NOT RECOMMENDED = NULL

SELECT ename, sal
FROM EMPL
WHERE sal < 2500 OR sal > 4000;

SELECT ename, job, sal
FROM Empl
WHERE mgr IS NULL;

SELECT ename
FROM EMPL
WHERE ename LIKE '--A%';

SELECT ename
FROM EMPL
WHERE ename LIKE '%T';

SELECT ename
FROM Empl
WHERE ename LIKE 'M_L%';

SELECT empno, ename, job, mgr, hiredate, 
       CASE
           WHEN comm IS NULL THEN 'Not given'
           ELSE comm
       END AS commission,
       deptno
FROM Empl;

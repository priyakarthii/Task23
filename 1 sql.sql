create database task;
use task;
create table Empl (empno INT, ename VARCHAR(50), job VARCHAR(50), mgr INT, hiredate DATE, sal DECIMAL(10, 2), comm DECIMAL(10, 2),
deptno INT);
-- insert the values
insert into Empl (empno, ename, job, mgr, hiredate, sal, comm, deptno) values 
(8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NUll, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, 300.00, 30),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10),
(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20),
(8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);

-- display the values in table
select * from Empl;
-- display whose salary is greater than or equal to 2200
select ename, sal from Empl where sal >= 2200;
-- display who not getting commission
select * from Empl where comm is Null;
-- display who dont have salary between 2500 to 4000
select ename, sal from Empl where sal NOT between 2500 and 4000;
-- display who dont have manager
select ename, job ,sal from Empl where mgr is NULL;
-- display whose name contains A as third letter
select ename from Empl where ename like '__A%';
-- display whose name contain T as last letter
select ename from Empl where ename like '%T';

use task;
CREATE TABLE Employee (
    empcode INT PRIMARY KEY,
    empname VARCHAR(50),
    empage INT,
    empsalary DECIMAL(10, 2)
);
SELECT * FROM Employee;




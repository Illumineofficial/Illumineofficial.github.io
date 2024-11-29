SELECT I.[EmpID]
      ,I.[EmpFname]
      ,I.[EmpLname]
      ,I.[Department]
      ,I.[Project]
      ,I.[Address]
      ,I.[DOB]
      ,I.[Gender]
	  ,P.[EmpPosition]
      ,P.[DateOfJoining]
      ,P.[Salary]
  FROM [dbo].['Employee Info$'] AS I
  FULL OUTER JOIN [dbo].['Employee position$'] AS P
ON I. EMPID = P. EMPID


---TO ADD MORE TABLE,
SELECT I.[EmpID]
      ,I.[EmpFname]
      ,I.[EmpLname]
      ,I.[Department]
      ,I.[Project]
      ,I.[Address]
      ,I.[DOB]
      ,I.[Gender]
	  ,P.[EmpPosition]
      ,P.[DateOfJoining]
      ,P.[Salary]
  FROM [dbo].['Employee Info$'] AS I
  FULL OUTER JOIN [dbo].['Employee position$'] AS P
ON I. EMPID = P. EMPID
JOIN PRODUCT_TABLE AS J
ON I.EMPID = J. EMPID
JOIN SOURCE_SALARY AS K
ON I.EMPID = K.EMPID

---SQL JOIN and FILTER
SELECT I.[EmpID]
      ,I.[EmpFname]
      ,I.[EmpLname]
      ,I.[Department]
      ,I.[Project]
      ,I.[Address]
      ,I.[DOB]
      ,I.[Gender]
	  ,P.[EmpPosition]
      ,P.[DateOfJoining]
      ,P.[Salary]
  FROM [dbo].['Employee Info$'] AS I
  FULL OUTER JOIN [dbo].['Employee position$'] AS P
ON I. EMPID = P. EMPID
WHERE p.SALARY > 90000 AND I.DEPARTMENT = 'ADMIN'




SELECT I.[EmpID]
      ,I.[EmpFname]
      ,I.[EmpLname]
      ,I.[Department]
      ,I.[Project]
      ,I.[Address]
      ,I.[DOB]
      ,I.[Gender]
	  ,P.[EmpPosition]
      ,P.[DateOfJoining]
      ,P.[Salary]
  FROM [dbo].['Employee Info$'] AS I
  FULL OUTER JOIN [dbo].['Employee position$'] AS P
ON I. EMPID = P. EMPID
WHERE P.[EmpPosition] = 'MANAGER'


SELECT [EmpID]
      ,[EmpFname]
      ,[EmpLname]
      ,[Department]
      ,[Project]
      ,[Address]
      ,[DOB]
      ,[Gender]
  FROM [dbo].['Employee Info$']
  WHERE EMPID IN (SELECT EMPID 
					FROM [dbo].['Employee position$'] AS P
					WHERE P. EMPPOSITION = 'MANAGER'
					)


     USE [ILLUMINEFX NOVEMBER COHORT]
GO

SELECT [EmpId]
      ,[FullName]
      ,[ManagerId]
      ,[DateOfJoining]
      ,[City]
  FROM [dbo].[Employee_Details$]

GO


--Write an SQL query to fetch the different projects available
--from the EmployeeSalary table.
select project
from  [dbo].[Employee_Salary$]


--Write an SQL query to fetch the count of employees working in project ‘P1’.
select *
from [dbo].[Employee_Salary$]
where project = 'p1'

--Write an SQL query to find the maximum, minimum, and average salary of the employees.
select max(salary)
from [dbo].[Employee_Salary$]
----------------------------------------------------------------------------------------
select min(salary)
from [dbo].[Employee_Salary$]
----------------------------------------------------------------------------------------
select avg(salary)
from [dbo].[Employee_Salary$]

--Write an SQL query to fetch the EmpId and FullName of 
--all the employees working under the Manager with id – ‘986’.
SELECT empid, fullname
FROM [dbo].[Employee_Details$]
WHERE MANAGERID = '986'


--Write an SQL query to fetch those employees who live in 
--Toronto and work under the manager with ManagerId – 321.
SELECT *
FROM [dbo].[Employee_Details$]
WHERE CITY = 'TORONTO' AND MANAGERID = '321'

--Write an SQL query to fetch all the employees who either 
--live in California or work under a manager with ManagerId – 321.
SELECT *
FROM [dbo].[Employee_Details$]
WHERE CITY = 'CALIFORNIA' OR MANAGERID = '321'

--Write an SQL query to fetch the count of employees working in project ‘P1’.
SELECT *
FROM [dbo].[Employee_Salary$]
WHERE project <> 'p1'


--Write an SQL query to display the total salary of 
--each employee adding the Salary with Variable value.
alter table [dbo].[Employee_Salary$]
add [total salary] varchar(99)
update [dbo].[Employee_Salary$]
set [total salary] = salary + variable

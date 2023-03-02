-- Criando o banco de dados CompanyDB
CREATE DATABASE CompaniaDB
GO

-- Usando o banco de dados CompanyDB
USE CompaniaDB
GO

-- Criando a tabela Employees
CREATE TABLE Employees
(
EmployeeID	int PRIMARY KEY IDENTITY(1,1),
FirstName	nvarchar(50) NOT NULL,
LastName	nvarchar(50) NOT NULL,
HireDate	date		 NOT NULL,
Department	nvarchar(50) NOT NULL,
Salary		money		 NOT NULL,
)
GO

-- Inserindo alguns registros na tabela Employees
INSERT INTO Employees VALUES 
('John', 'Doe', '2022-01-01', 'Sales', 55000),
('Jane', 'Doe', '2022-02-01', 'Marketing', 60000),
('Jim', 'Smith', '2022-03-01', 'IT', 65000)
GO

--Criando as Views
create view VWemployeeDepartment as
select EmployeeID, FirstName, LastName,	HireDate, Department 
from Employees
--where Department = 'sales'
go

select * from VWemployeeDepartment
where Department = 'Sales'

--

create view VWemployeeSalaries as
select EmployeeID, FirstName, LastName, Salary, Department
from Employees
where Salary > 50000

select * from VWemployeeSalaries

--Criando as Procedures
create procedure GetAllEmployees
as
begin
	select * from Employees
end

exec GetAllEmployees 

create procedure GetEmployeesByDepartment
	@department nvarchar(50)
as
begin
	select * from Employees
	where Department = @department;
end

exec GetEmployeesByDepartment 'sales'

---------------------------------------
create procedure Update_salary
as
begin
	update Employees Set Salary = Salary * 2.2 
end

exec Update_salary

select * from Employees
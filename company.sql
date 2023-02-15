-- Criando o banco de dados CompanyDB
CREATE DATABASE CompanyDB;
GO

-- Usando o banco de dados CompanyDB
USE CompanyDB;
GO

-- Criando a tabela Comp.Employees
CREATE TABLE Employees
(
empl_ID			 int			primary key		identity(1,1),
empl_FirstName	 nvarchar(50)	NOT NULL,
empl_LastName	 nvarchar(50)	NOT NULL,
empl_HireDate	 date			NOT NULL,
empl_Department	 nvarchar(50)	NOT NULL,
empl_SalaryMoney money			NOT NULL
);
GO

-- Inserindo alguns registros na tabela Employees
INSERT INTO Employees 
VALUES ('John','Doe','2022-01-01','Sales','5500'),
       ('Jane','Doe','2022-02-01','Marketing','6000'),
       ('Bim','Smith','2022-03-01','IT', '6500'),
       ('DJohn','Doe','2022-01-01','Sales','2100'),
       ('Mane','Doe','2022-02-01','Marketing','3000'),
       ('Tim','Smith','2022-03-01','IT','35000')
;
GO

-- Criando a view EmployeeInformation
CREATE VIEW EmployeeInformation AS
SELECT empl_ID, empl_FirstName, empl_LastName, empl_HireDate, empl_Department, empl_SalaryMoney
FROM Employees;
GO

select * from EmployeeInformation

-- Criando a view EmployeeSalaries
CREATE VIEW EmployeeSalaries AS
SELECT empl_ID, empl_FirstName, empl_LastName, empl_HireDate, empl_Department, empl_SalaryMoney
FROM Employees
WHERE empl_SalaryMoney = '5000'
GO

select empl_SalaryMoney from Employees

-- Executando um SELECT na tabela Employees
SELECT * FROM Employees;
GO

-- Executando um SELECT na view EmployeeInformation
SELECT * FROM EmployeeInformation;
GO

-- Executando um SELECT na view EmployeeSalaries
SELECT * FROM EmployeeSalaries;
GO


-- Faça um select com estas informações, trazendo salários abaixo de 3000
CREATE VIEW EmployeeSalaries1 AS
SELECT empl_ID, empl_FirstName, empl_LastName, empl_HireDate, empl_Department, empl_SalaryMoney
FROM Employees
WHERE empl_SalaryMoney < 3000
GO

select * from EmployeeSalaries1
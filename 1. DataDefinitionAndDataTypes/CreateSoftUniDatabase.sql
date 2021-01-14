CREATE DATABASE SoftUni_Demo

USE SoftUni_Demo

CREATE TABLE Towns (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    Name NVARCHAR(50) NOT NULL
)

CREATE TABLE Addresses (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    AddressText NVARCHAR(50) NOT NULL,
    TownId INT NOT NULL FOREIGN KEY REFERENCES Towns(Id)
)

CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    Name NVARCHAR(50) NOT NULL
)

CREATE TABLE Employees (
    Id INT PRIMARY KEY IDENTITY NOT NULL,
    FirstName NVARCHAR(30) NOT NULL,
    MiddleName NVARCHAR(30),
    LastName NVARCHAR(30) NOT NULL,
    JobTitle NVARCHAR(30) NOT NULL,
    DepartmentID INT NOT NULL FOREIGN KEY REFERENCES Departments(Id),
    HireDate DATETIME2 NOT NULL,
    Salary DECIMAL (8,2) NOT NULL,
    AddressId INT NOT NULL FOREIGN KEY REFERENCES Addresses(Id)
)
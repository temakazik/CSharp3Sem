USE [AdventureWorks]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetPersonsInfo] AS
BEGIN
     SELECT TOP 30 
				  Person.Person.BusinessEntityID AS Id,
	              FirstName + ' ' + LastName AS FIO,
				  BirthDate,
				  PhoneNumber, 
				  JobTitle
    FROM          Person.Person, 
	              Person.PersonPhone,
				  HumanResources.Employee

    WHERE Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID
    AND   Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID

	ORDER BY Id
END;
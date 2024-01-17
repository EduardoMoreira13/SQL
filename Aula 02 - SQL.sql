---- COMANDO COUNT

SELECT COUNT (*)
FROM Person.Person;

SELECT COUNT (Title)
FROM Person.Person;

SELECT COUNT (DISTINCT Title)
FROM Person.Person;



---- COMANDO TOP

SELECT TOP 20 *
FROM Person.Person;

SELECT TOP 20 FirstName, BusinessEntityID
FROM Person.Person
WHERE BusinessEntityID > 500;



---- COMANDO ORDER

SELECT TOP 50 *
FROM Person.Person
ORDER BY LastName asc;

SELECT TOP 50 *
FROM Person.Person
ORDER BY LastName desc;

SELECT TOP 50 *
FROM Person.Person
ORDER BY PersonType asc , FirstName desc;



---- COMANDO BETWEEN

SELECT TOP 50 *
FROM Production.Product
WHERE ReorderPoint BETWEEN 500 AND 1000
ORDER BY ReorderPoint ASC;

SELECT TOP 200 *
FROM Production.Product
WHERE SafetyStockLevel NOT BETWEEN 500 AND 1000
ORDER BY SafetyStockLevel desc;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01';


---- COMANDO IN

SELECT TOP 20 *
FROM Production.Product
WHERE SafetyStockLevel in (500,1000);

SELECT TOP 50 *
FROM Person.Person
WHERE EmailPromotion in (SELECT NameStyle from Person.Person);



---- COMANDO LIKE

SELECT FirstName
FROM Person.Person
WHERE FirstName like 'ab%'; -- comeca com

SELECT FirstName
FROM Person.Person
WHERE FirstName like '%to'; -- termina com

SELECT FirstName 
FROM Person.Person
WHERE FirstName like '%be%'; -- contem





-- DESAFIOS 1 

SELECT *
FROM Production.Product;

SELECT COUNT (DISTINCT ProductID)
FROM Production.Product;

SELECT TOP 10 *
FROM Production.Product
ORDER BY ListPrice DESC;

SELECT TOP 4 ProductID, Name, ProductNumber
FROM Production.Product
ORDER BY ProductID ASC;



-- DESAFIOS 2 

SELECT COUNT (ProductID)
FROM Production.Product
WHERE StandardCost > 1500;

SELECT COUNT (LastName)
FROM Person.Person
WHERE LastName LIKE 'P%';

SELECT COUNT (DISTINCT City)
FROM Person.Address;

SELECT City, StateProvinceID
FROM Person.Address;

SELECT DISTINCT City, StateProvinceID
FROM Person.Address;

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE Color = 'RED' AND ListPrice BETWEEN 500 AND 1000;


SELECT COUNT (Name)
FROM Production.Product
WHERE Name LIKE '%ROAD%';
-- COMANDO SELF JOIN

SELECT *
FROM Customers;

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers AS A, Customers AS B
WHERE A.Region = B.Region;

SELECT *
FROM Employees;

SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM Employees AS A, Employees AS B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate);



-- COMANDO SUBQUERY (SUBSELECT) 

SELECT *
FROM Production.Product 

SELECT AVG(ListPrice)
FROM Production.Product; 

SELECT ListPrice -- NAO FUNCIONA
FROM Production.Product
WHERE ListPrice > AVG(ListPrice);

SELECT ListPrice -- MANUALMENTE
FROM Production.Product
WHERE ListPrice > 438.666;

SELECT ListPrice -- SELECT DENTRO DE SELECT
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

SELECT *
FROM Person.Person;

SELECT * 
FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINEER';

SELECT FirstName, BusinessEntityID -- FILTRO DIRETO
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee WHERE JobTitle = 'DESIGN ENGINEER');

SELECT A.FirstName, A.BusinessEntityID, B.JobTitle, B.BusinessEntityID -- JUNCAO DE TABELAS E DEPOIS O FILTRO
FROM Person.Person AS A
INNER JOIN HumanResources.Employee AS B
ON A.BusinessEntityID = B.BusinessEntityID
WHERE B.JobTitle = 'DESIGN ENGINEER';

SELECT A.FirstName, A.BusinessEntityID, B.JobTitle, B.BusinessEntityID -- JUNCAO DE TABELAS E DEPOIS O FILTRO
FROM Person.Person AS A
INNER JOIN HumanResources.Employee AS B
ON A.BusinessEntityID = B.BusinessEntityID
AND B.JobTitle = 'DESIGN ENGINEER';



-- COMANDO DATEPART - DATAS

SELECT *
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(WEEK, OrderDate) AS Dia
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, DATEPART(WEEKDAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader;

SELECT AVG(TotalDue) AS Media, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Mes;


-- MANIPULACAO DE STRINGS - TEXTOS

SELECT * 
FROM Person.Person

SELECT CONCAT(FirstName, ' ',LastName) 
FROM Person.Person;

SELECT UPPER(FirstName) 
FROM Person.Person;

SELECT LOWER(FirstName) 
FROM Person.Person;

SELECT LEN(FirstName) 
FROM Person.Person;

SELECT FirstName, SUBSTRING(FirstName, 1,3), SUBSTRING(FirstName, 3,2)
FROM Person.Person;

SELECT ProductNumber, REPLACE(ProductNumber, '-','#'), REPLACE(ProductNumber, '-',2)
FROM Production.Product;



-- OPERACOES MATEMATICAS

SELECT * 
FROM Sales.SalesOrderDetail

SELECT LineTotal - UnitPrice 
FROM Sales.SalesOrderDetail

SELECT LineTotal + UnitPrice 
FROM Sales.SalesOrderDetail

SELECT LineTotal * UnitPrice 
FROM Sales.SalesOrderDetail

SELECT LineTotal / UnitPrice 
FROM Sales.SalesOrderDetail

SELECT SUM(LineTotal), AVG(LineTotal), MIN(LineTotal), MAX(LineTotal)
FROM Sales.SalesOrderDetail

SELECT ROUND(LineTotal, 3)
FROM Sales.SalesOrderDetail

SELECT SQRT(LineTotal)
FROM Sales.SalesOrderDetail

SELECT SQRT(SUM(LineTotal))
FROM Sales.SalesOrderDetail



-- DESAFIO 1

SELECT ProductID, Discount
FROM [Order Details];

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] AS A, [Order Details] AS B 
WHERE A.Discount = B.Discount;


-- DESAFIO 2

SELECT TOP 5 *
FROM Person.Address;

SELECT *
FROM Person.StateProvince;

SELECT *
FROM Person.Address
WHERE StateProvinceID = (SELECT StateProvinceID FROM Person.StateProvince WHERE NAME = 'ALBERTA');
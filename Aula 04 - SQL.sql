---- COMANDO INNER JOIN

SELECT TOP 10 *
FROM Person.Person;

SELECT TOP 10 *
FROM Person.EmailAddress;

SELECT A.BusinessEntityID, A.FirstName, A.LastName, B.EmailAddress
FROM Person.Person AS A
INNER JOIN Person.EmailAddress AS B ON A.BusinessEntityID = B.BusinessEntityID;

SELECT TOP 10 *
FROM Production.Product;

SELECT TOP 10 *
FROM Production.ProductSubcategory;

SELECT A.Name, A.ListPrice, B.Name
FROM Production.Product AS A
INNER JOIN Production.ProductSubcategory AS B ON A.ProductSubcategoryID = B.ProductSubcategoryID;

SELECT TOP 10 *
FROM Person.BusinessEntityAddress AS A
INNER JOIN Person.Address AS B ON A.AddressID = B.AddressID;



---- COMANDO LEFT JOIN OU LEFT OUTER JOIN

SELECT * 
FROM Person.Person AS A
LEFT JOIN Sales.PersonCreditCard AS B
ON A.BusinessEntityID = B.BusinessEntityID;

SELECT * 
FROM Person.Person AS A
LEFT OUTER JOIN Sales.PersonCreditCard AS B
ON A.BusinessEntityID = B.BusinessEntityID;

SELECT * 
FROM Person.Person AS A
LEFT OUTER JOIN Sales.PersonCreditCard AS B
ON A.BusinessEntityID = B.BusinessEntityID
WHERE B.BusinessEntityID IS NULL;



---- COMANDO UNION

SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE NAME LIKE '%CHAIN%'
UNION -- RETIRA DUPLICADOS
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE NAME LIKE '%DECAL%'

SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE NAME LIKE '%CHAIN%'
UNION ALL -- NAO RETIRA DUPLICADOS
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE NAME LIKE '%DECAL%' 




---- DEAFIO 1

SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

SELECT A.BusinessEntityID, B.Name, A.PhoneNumberTypeID, PhoneNumber
FROM Person.PersonPhone AS A
INNER JOIN Person.PhoneNumberType AS B ON A.PhoneNumberTypeID = B.PhoneNumberTypeID;

SELECT TOP 10 *
FROM Person.StateProvince

SELECT TOP 10 *
FROM Person.Address

SELECT A.AddressID, A.City, A.StateProvinceID, B.Name
FROM Person.Address AS A
INNER JOIN Person.StateProvince AS B ON A.StateProvinceID = B.StateProvinceID;

SELECT B.AddressID, B.City, A.StateProvinceID, A.Name
FROM Person.StateProvince AS A
INNER JOIN Person.Address AS B ON A.StateProvinceID = B.StateProvinceID;


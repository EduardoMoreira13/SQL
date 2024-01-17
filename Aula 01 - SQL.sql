-- COMANDO SELECT
SELECT *
FROM person.Person;

SELECT FirstName
FROM person.Person;

SELECT firstName, lastName
FROM person.Person;


-- COMANDO DISTINCT
SELECT DISTINCT firstname
FROM person.Person;

SELECT DISTINCT lastname
FROM person.person;


-- COMANDO WHERE E CONDICOES
SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID < 10;


SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID >= 1000;


SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID = 1;

SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID <> 1;


SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID > 10 and BusinessEntityID < 20;


SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID = 11 or BusinessEntityID = 12;


SELECT firstname, lastName, BusinessEntityID, Title
FROM person.person
WHERE BusinessEntityID > 11 and Title is not null;


SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID = 11 or BusinessEntityID = 12 or BusinessEntityID = 14;


SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID in (11,12,13);


SELECT firstname, lastName, BusinessEntityID
FROM person.person
WHERE BusinessEntityID not in (11,12,13);


SELECT firstname, lastName, Title
FROM person.person
WHERE Title is not null;


SELECT firstname, lastName, Title
FROM person.person
WHERE Title is null;



-- DESAFIOS
SELECT firstname, lastName, Title
FROM person.person
WHERE title = 'sr.';


SELECT Name, weight
FROM Production.Product
WHERE weight > 500 and weight <= 700;


SELECT BusinessEntityID, MaritalStatus, SalariedFlag
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' and SalariedFlag = 1;


SELECT FirstName, LastName, BusinessEntityID
FROM Person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs';


SELECT EmailAddress, BusinessEntityID
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;

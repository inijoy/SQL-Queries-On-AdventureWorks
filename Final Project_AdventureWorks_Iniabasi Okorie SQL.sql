use AdventureWorks2022;

--SECTION 1: BEGINERS LEVEL TASKS

-- SQL TASK (1) LIST ALL EMPLOYEES AND THEIR JOB TITLES

select * from HumanResources.Employee
select * from Person.Person
select P.FirstName, p.LastName, E.JobTitle from HumanResources.Employee as E
JOIN Person.Person as p on E.BusinessEntityID = p.BusinessEntityID

-- SQL TASK (2) DISPLAY All PRODCTS AND THEIR LIST PRICES

select * from Production.Product
select Name, ProductID, ProductNumber,ListPrice from Production.Product

-- SQL TASK (3) RETRIEVE CUSTOMERS WHO PLACED ORDERS IN 2021

select * from Sales.Customer
select * from Person.Person
select * from Sales.SalesOrderHeader
select distinct C.customerID,p.FirstName, p.LastName from Sales.Customer as C
JOIN Person.Person as P on C.PersonID = p.BusinessEntityID
JOIN Sales.SalesOrderHeader as SOH ON c.CustomerID = SOH.CustomerID
where YEAR (SOH.OrderDate) =2021

-- SQL TASK (4) LIST THE TOP 10 MOST EXPENSIVE PRODUCTS

	select * from Production.Product
	select top 10 Name,ListPrice
	from Production.Product
	order by ListPrice desc

-- SQL TASK (5) SHOW THE TOTAL NUMBER OF ORDERS PLACED IN 2021

	select * from Sales.SalesOrderHeader
	select COUNT (*) as Totalorders
	from Sales.SalesOrderHeader
	where YEAR (OrderDate) = 2021

-- SQL TASK (6) LIST SALES ORDERS WITH TOTALDUE GREATER THAN $1,500

	select * from Sales.SalesOrderHeader
	select SalesOrderID,TotalDue 
	from Sales.SalesOrderHeader
	where TotalDue >1500
	order by TotalDue

-- SQL TASK (7) RETRIEVE PRODUCT WITH LISTPRICE BETWEEN $100 AND $500

	select * from Production.Product
	select ProductID,Name, ProductNumber, ListPrice 
	from Production.Product
	where ListPrice between $100 and $500 
	order by ListPrice desc

--SQL TASK (8) RETRIEVE CUSTOMERS FROM A SPECIFIC REGION

select * from Sales.Customer
select * from Person.Person
select * from Person.Address
select * from Person.CountryRegion
select p.FirstName, p.LastName, c.CustomerID, a.AddressLine1, a.City, sp.Name AS StateProvince, cr.Name AS CountryRegion
from Sales.Customer AS c
JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
JOIN Person.BusinessEntityAddress AS bea ON c.PersonID = bea.BusinessEntityID
JOIN Person.Address AS a ON bea.AddressID = a.AddressID
JOIN  Person.StateProvince AS sp ON a.StateProvinceID = sp.StateProvinceID
JOIN Person.CountryRegion AS cr ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE cr.Name = 'United States';

--SECTION 2: INTERMEDIATE LEVEL TASKS

--SQL TASK (9) CALCULATE TOTAL SALES AMOUNT fOR EACH YEAR fROM 2020 TO 2022
use AdventureWorks2022
select * from Sales.SalesOrderHeader
select YEAR(OrderDate) as SalesYear, SUM(TotalDue) as TotalSalesAmount
from Sales.SalesOrderHeader
where YEAR(OrderDate) between 2013 and 2014
group by  YEAR(OrderDate)
order by SalesYear;

--SQL TASK (10) DISPLAY NUMBER OF ORDERS PLACED BY EACH CUSTOMER

select * from Sales.SalesOrderHeader
select * from Person.Person
select * from Sales.Customer
select c.CustomerID,p.FirstName, p.LastName,
COUNT(soh.SalesOrderID) as TotalOrders
FROM Sales.SalesOrderHeader as soh
JOIN Sales.Customer as c on soh.CustomerID = c.CustomerID
JOIN Person.Person as p on c.PersonID = p.BusinessEntityID
group by c.CustomerID,  p.FirstName,  p.LastName
order by TotalOrders DESC;

--SQL TASK (11) LIST PRODUCTS THAT HAVE NEVER BEEN SOLD

select * from Production.Product
select * from Sales.SalesOrderDetail
select p.ProductID, p.Name, p.ProductNumber
from Production.Product as p
LEFT JOIN Sales.SalesOrderDetail as sod on p.ProductID = sod.ProductID
WHERE sod.ProductID IS NULL;

--SQL TASK(12) Find Total Number of Employees with the Title "Sales Representative"

select * from HumanResources.Employee
select COUNT(*) AS TotalSalesRepresentatives
from HumanResources.Employee
WHERE JobTitle = 'Sales Representative';

-- SQL TASK(13) Retrieve Average ListPrice for All Products in the "Bikes" Category

select * from Production.Product
select AVG(p.ListPrice) as AverageBikePrice
from Production.Product as p
JOIN Production.ProductSubcategory as ps
 on p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory as pc
on ps.ProductCategoryID = pc.ProductCategoryID
WHERE  pc.Name = 'Bikes';

-- SQL TASK(14) List Top 5 Customers Based on Total Order Amount

select * from Sales.SalesOrderHeader
select * from Sales.Customer
select * from Person.Person
select TOP 5
 c.CustomerID, p.FirstName, p.LastName, 
 SUM(soh.TotalDue) as TotalOrderAmount
from Sales.Customer as c
JOIN Person.Person as p on c.PersonID = p.BusinessEntityID
JOIN  Sales.SalesOrderHeader as soh on c.CustomerID = soh.CustomerID
group by c.CustomerID, p.FirstName, p.LastName
ORDER BY TotalOrderAmount DESC;

-- SQL TASK (15) Display All Products Sold More Than 50 Times in 2023

select * from Production.Product
select * from Sales.SalesOrderDetail
select p.ProductID, p.Name as ProductName, 
 COUNT(sod.ProductID) as TimesSold
from Production.Product as p
JOIN  Sales.SalesOrderDetail as sod
 ON p.ProductID = sod.ProductID
JOIN Sales.SalesOrderHeader as soh
 on sod.SalesOrderID = soh.SalesOrderID
WHERE YEAR(soh.OrderDate) = 2023
group by p.ProductID, p.Name
HAVING COUNT(sod.ProductID) > 50;
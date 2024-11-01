# SQL-Queries-On-AdventureWorks
## This is a brief report summarizing my findings on the AdventureWorks SQL Queries. It includes the results and insights on the Data Analysis.
___
#  Project Description
## This project demonstrates the use of SQL to query the AdventureWorks2022 database, focusing on beginner to intermediate SQL tasks related to employee management, product cataloging, and sales analytics. The project explores common database operations such as filtering, sorting, aggregating, and joining tables to retrieve meaningful insights
___
#  Project Overview
##  The AdventureWorks2022 SQL project covers a range of SQL tasks across two levels:
-  Beginner Level: Retrieves and manipulates basic data involving employees, products, and customer orders.
-  Intermediate Level: Builds on foundational queries with more complex aggregations, calculations, and customer/product analyses.
## Each SQL task is structured to achieve a specific goal, from listing employees and job titles to aggregating total sales by year and identifying top customers.
___
#  Dataset Description
- 	AdventureWorks2022 Database: A relational database provided by Microsoft for sample queries and SQL training, containing schema tables for Sales, Production, Human Resources, and more. This project mainly uses the following tables:
- 	HumanResources.Employee
- 	Person.Person
- 	Production.Product
- 	Sales.Customer
- 	Sales.SalesOrderHeader
- 	Sales.SalesOrderDetail
- 	Person.Address, Person.StateProvince, and Person.CountryRegion
  ___
  #  SQL Techniques Used
 -  Basic Data Retrieval: Using SELECT to fetch records.-
 - 	Filtering: Applying WHERE clauses to retrieve specific data.
 -  Aggregations: Using functions like SUM, COUNT, and AVG for summarized data.
 - 	Sorting and Ordering: Using ORDER BY to arrange query results.
 -	JOIN Operations: Performing JOINs (INNER, LEFT) to connect tables and retrieve related data.
 -	Grouping: Using GROUP BY to aggregate data per unique categories.
 -	Conditional Filtering with HAVING: Filtering groups based on aggregate conditions
   ___
   #  Queries and Execution Summary
##The queries are structured into beginner and intermediate tasks, as described below:
## Beginner Level Tasks
1.	Listing All Employees and Their Job Titles: Retrieves each employee's first and last name alongside their job title.
2.	Displaying All Products and Their List Prices: Shows all available products along with their unique identifiers and prices.
3.	Retrieving Customers Who Placed Orders in 2021: Lists customers who ordered within a specified year.
4.	Top 10 Most Expensive Products: Displays products sorted by price in descending order.
5.	Total Number of Orders in 2021: Counts orders placed in 2021.
6.	Sales Orders with Total Due Over $1,500: Lists orders exceeding a specified amount.
7.	Products Priced Between $100 and $500: Retrieves products within a set price range.
8.	Customers from a Specific Region: Lists customers based on geographical location, such as the United States.
   ___
   ## Intermediate Level Tasks
1.	Calculating Yearly Total Sales (2020-2022): Sums up total sales amounts by year.
2.	Number of Orders per Customer: Counts orders for each customer.
3.	Products That Have Never Been Sold: Identifies products without any recorded sales.
4.	Counting Sales Representatives: Tallies employees with the title “Sales Representative.”
5.	Average List Price for 'Bikes' Category: Calculates the average price for products in the “Bikes” category.
6.	Top 5 Customers by Total Order Amount: Identifies high-value customers based on order totals.
7.	Products Sold More Than 50 Times in 2023: Lists products with high sales frequency within a specific year.
## Each query was executed successfully in SQL Server using AdventureWorks2022, and outputs were verified for accuracy
___
Contact
For any questions or further information on this project, please reach out to:
Name: Iniabasi Okorie
Email: inijoy1@gmail.com
GitHub: https://github.com/inijoy





--VARUN SHOURIE

/*
	Query 1
	From the SQL Setup HW
*/

SELECT *

  FROM Customers;


/*
	Query 2
	In what countries do Northwind's customers reside?
*/

SELECT DISTINCT Country
  
  FROM Customers;


/*
	Query 3
	What are the names, titles, and phone numbers of Northwind's customers?
*/

SELECT ContactName, ContactTitle, Phone
  
  FROM Customers;


/*
	Query 4
	What are the company names, customer names, and cities of all of Northwind's customers in London?
*/

SELECT CompanyName, ContactName, City
  
  FROM Customers
  
  WHERE City="London";


/*
	Query 5
	What are the products, prices, and number in stock for all products sold by Northwind that have a reorder level less than 15?
*/

SELECT ProductName, UnitPrice, UnitsInStock
  
  FROM Products
  
  WHERE ReorderLevel < 15;

/*
	Query 6
	What are the names and cities of Northwind's employees that do not live in Seattle?
*/

SELECT LastName, FirstName, City
  
  FROM Employees
  
  WHERE City != "Seattle";

/*
	Query 7
	What orders shipped late? (show all of the fields)
*/

SELECT *
  
  FROM Orders
  
  WHERE ShippedDate > RequiredDate;

/*
	Query 8
	What are the company names, contacts, city, country, and region of Northwind's customers that live in the Americas (United States, Canada, Mexico, Argentina, Brazil, and Venezuela) but not in the city of Portland, OR?
*/

SELECT CompanyName, ContactName, ContactTitle, City, Country, Region
  
  FROM Customers
  
  WHERE Country IN ("USA", "Canada", "Mexico", "Argentina", "Brazil", "Venezuela") AND City != "Portland"; 
  
  
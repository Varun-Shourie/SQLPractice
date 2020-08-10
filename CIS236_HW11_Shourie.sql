--VARUN SHOURIE

/*
	Query 1
	What are the cities, companies, and contacts for Northwind's customers that live in a city starting with an M or an S, sorted by company name?
*/

SELECT City, CompanyName, ContactName, ContactTitle
  
  FROM Customers
  
  WHERE City LIKE "M%" OR City LIKE "S%"
  
  ORDER BY CompanyName;

/*
	Query 2
	To check for missing data, what are the names of Northwind's employees, sorted by last name, that do not have a region listed in the database?
*/

SELECT LastName, FirstName
  
  FROM Employees
  
  WHERE Region IS NULL
  
  ORDER BY LastName;

/*
	Query 3
	To further check for missing data, add city to the last query and check for the employees that do not work in Seattle and do not have a region listed. No need to sort the output.
*/

SELECT LastName, FirstName, City
  
  FROM Employees
  
  WHERE Region IS NULL AND City != "Seattle";

/*
	Query 4
	What are the employees responsible for a sale (last name only), the ID of the order, the shipping name, shipping country, and shipping fee for orders placed to ship to customers in the UK and Ireland?
	
	Sort these results by employee last name. Also, for readability purposes format the field names as “Employee Last Name”, “Order ID”, “Freight Company”, “Destination Country”, and “Shipping Cost”, respectively
*/

SELECT LastName AS 'Employee Last Name', OrderID AS 'Order ID', ShipName AS 'Freight Company', ShipCountry AS 'Destination Country', Freight AS 'Shipping Cost'
  
  FROM Employees
  
  JOIN Orders
  
  ON Employees.EmployeeID = Orders.EmployeeID
  
  WHERE ShipCountry IN ("UK", "Ireland")
  
  ORDER BY LastName;

/*
	Query 5
	How many customers does Northwind have in each country in which they do business? Rename the fields in the output for readability.
*/

SELECT COUNT("CustomerID") AS "Number of Customers", Country AS "Country of Customers"
  
  FROM Customers
  
  GROUP BY Country;
  

#1. Get all the orders placed by a specific customer. CustomerID for this customer is MAGAA
 select * from tblOrders where CustomerID = 'MAGAA';
 
 #2.Show customers whose ContactTitle is not Sales Associate.
 #Display CustomerID, CompanyName, Contact Name, and ContactTitle
 select CustomerID, CompanyName, ContactName, ContactTitle
 from tblCustomers
 where ContactTitle != 'Sales Associate';

 #3. Show customers who bought products where the EnglishName includes the string “chocolate”. 
#Display CustomerID, CompanyName, ProductID, ProductName, and EnglishName
select tblCustomers.CustomerID, tblCustomers.CompanyName, tblOrderDetails.ProductID, tblProducts.ProductName, tblProducts.EnglishName
from (((tblCustomers inner join tblOrders on tblCustomers.CustomerID = tblOrders.CustomerID)
inner join tblOrderDetails on tblOrders.OrderID = tblOrderDetails.OrderID)
inner join tblProducts on tblOrderDetails.ProductID = tblProducts.ProductID)
where tblProducts.EnglishName like '%chocolate%';

#4. Show products which were bought by customers from Italy or USA. ”. 
#Display CustomerID, CompanyName, ShipCountry, ProductID, ProductName, and EnglishName
select tblCustomers.CustomerID, tblCustomers.CompanyName, tblOrders.ShipCountry, tblOrderDetails.ProductID, tblProducts.ProductName, tblProducts.EnglishName
from (((tblCustomers inner join tblOrders on tblCustomers.CustomerID = tblOrders.CustomerID)
inner join tblOrderDetails on tblOrders.OrderID = tblOrderDetails.OrderID)
inner join tblProducts on tblOrderDetails.ProductID = tblProducts.ProductID)
where tblOrders.ShipCountry in ('Italy','USA');

#5.Show total price of each product in each order. Note that there is not a column named as total price. 
#You should calculate it and create a column named as TotalPrice. Display OrderID, ProductID, ProductName, UnitPrice, Quantity, Discount, and TotalPrice
select tblOrders.OrderID, tblOrderDetails.ProductID, tblProducts.ProductName, tblOrderDetails.UnitPrice, tblOrderDetails.Quantity, tblOrderDetails.Discount, (tblOrderDetails.UnitPrice * tblOrderDetails.Quantity) TotalPrice
from ((tblOrders inner join tblOrderDetails on tblOrders.OrderID = tblOrderDetails.OrderID)
inner join tblProducts on tblOrderDetails.ProductID = tblProducts.ProductID);

#6. Show how many products there are in each category and show the results in ascending 
#order by the total number of products. Display CategoryName, and TotalProducts
 #CategoryName was not found in the ERD.
 
 
#7. Show the total number of customers in each City. Display Country, City, TotalCustomers
select tblCustomers.Country, tblCustomers.City, count(tblCustomers.CustomerID) TotalCustomers
from tblCustomers group by tblCustomers.Country, tblCustomers.City;

#8. Show the orders which were shipped late than the actual required date. 
#Display OrderID, OrderDate, RequiredDate, and ShippedDate
select tblOrders.OrderID, tblOrders.OrderDate, tblOrders.RequiredDate, tblOrders.ShippedDate
from tblOrders where tblOrders.ShippedDate > tblOrders.RequiredDate;
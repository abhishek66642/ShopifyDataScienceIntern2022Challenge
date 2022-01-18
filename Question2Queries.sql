/* Query A */
SELECT count(O.OrderID) as speedy_express_total 
FROM Orders O,Shippers S 
WHERE S.ShipperID=O.ShipperID 
AND S.ShipperName='Speedy Express';

/* 54 */

/* Query B */
SELECT E.LastName,COUNT(O.OrderID) AS num_orders
FROM Employees E,Orders O 
WHERE E.EmployeeID=O.EmployeeID 
GROUP BY E.LastName 
ORDER BY COUNT(O.OrderID) DESC;

/* Peacock with 40 Orders */

/* Query C */
SELECT SUM(OD.Quantity) as Quantity,P.ProductName 
FROM OrderDetails OD,Orders O,Products P,Customers C 
WHERE C.CustomerID=O.CustomerID AND OD.ProductID=P.ProductID AND
OD.OrderID=O.OrderID and C.country='Germany' 
GROUP BY P.ProductName 
ORDER BY SUM(OD.Quantity) DESC;

/* Boston Crab Meat with 160 */

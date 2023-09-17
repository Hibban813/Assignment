
----Find details of Shipper(s) who has got Orders
select O.ShipperID, OrderID from Orders O, Shippers S Where O.ShipperID=S.ShipperID;


----Find details of Shipper(s) for whom there is no Order
select OrderID, ShipperID from Orders where ShipperID NOT IN (Select ShipperID from Shippers);


-----Find details of Customer(s) whose orders can’t be shipped due to missing shipper details
select O.OrderID, O.ShipperID, O.CustomerID, C.CustomerName, C.ContactName from Orders O, Customers C where O.CustomerID=C.CustomerID AND O.ShipperID NOT IN (Select S.ShipperID from Shippers S);
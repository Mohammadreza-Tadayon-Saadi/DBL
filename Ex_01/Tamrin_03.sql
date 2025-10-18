Select o.SalesOrderID, o.OrderDate, Count(Distinct od.ProductID) ProductCount, Sum(od.OrderQty) OrderQuantity
From SalesLT.SalesOrderHeader o Inner Join SalesLT.SalesOrderDetail od On o.SalesOrderID = od.SalesOrderID
Group By o.SalesOrderID, o.OrderDate
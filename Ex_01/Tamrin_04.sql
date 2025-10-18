Select Top 10 c.CustomerId, c.FirstName, c.LastName, Max(p.ListPrice) MaxProductPrice
From SalesLT.Customer c Inner Join SalesLT.SalesOrderHeader soh On c.CustomerId = soh.CustomerId
						Inner Join SalesLT.SalesOrderDetail sod On soh.SalesOrderId = sod.SalesOrderId
						Inner Join SalesLT.[Product] p On sod.ProductId = p.ProductId
Group By c.CustomerId, c.FirstName, c.LastName
Order By MaxProductPrice Desc
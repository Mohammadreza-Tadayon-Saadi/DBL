Select City, Count(ca.CustomerId) CustomerCount
From SalesLT.[Address] a Inner Join SalesLT.CustomerAddress ca On a.AddressId = ca.AddressId
Group By City
Order By CustomerCount Desc
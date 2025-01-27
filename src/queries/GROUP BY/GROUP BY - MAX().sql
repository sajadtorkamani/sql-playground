select o.OrderDate, max(p.Price) AverageProductPrice
from Orders o
         inner join OrderDetails od on od.OrderID = o.OrderID
         inner join Products p on p.ProductID = od.ProductID
group by o.OrderDate
order by AverageProductPrice desc


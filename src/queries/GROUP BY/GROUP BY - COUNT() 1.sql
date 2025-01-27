select CustomerID, count(*) as OrderCount
from Orders
group by CustomerID
order by OrderCount desc;


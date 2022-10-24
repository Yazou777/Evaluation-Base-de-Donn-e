SELECT month(OrderDate) AS 'Mois 97', sum(UnitPrice*Quantity) AS 'Montant Ventes'
FROM orders 
JOIN `order details` ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997 
GROUP BY `Mois 97` 



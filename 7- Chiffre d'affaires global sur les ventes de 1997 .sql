SELECT SUM(UnitPrice*Quantity) AS 'Montant Ventes 97'
FROM orders 
JOIN `order details` ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997



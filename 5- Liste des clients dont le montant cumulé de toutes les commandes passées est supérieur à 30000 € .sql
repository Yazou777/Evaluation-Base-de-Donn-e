SELECT CompanyName AS 'Client', SUM(UnitPrice*Quantity) AS 'CA', Country AS 'Pays'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
GROUP BY CompanyName
HAVING SUM(UnitPrice*Quantity) > 30000    /*pour mettre une condition sur une agrégation(calcul) il faut utiliser Having */
ORDER BY CA desc                          /*la clause HAVING est TOUJOURS utilisée en conjonction avec la clause GROUP BY /

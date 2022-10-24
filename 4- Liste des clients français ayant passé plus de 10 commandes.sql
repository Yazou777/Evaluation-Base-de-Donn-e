SELECT CompanyName AS 'Client', count(OrderID) AS 'Nbre commandes'
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
WHERE Country LIKE 'France%'  
GROUP BY CompanyName
HAVING count(OrderID) > 10
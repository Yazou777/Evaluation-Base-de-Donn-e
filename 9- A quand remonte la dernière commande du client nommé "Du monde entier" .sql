SELECT CompanyName AS 'Client' ,OrderID ,OrderDate AS 'Date de denière commande'
FROM orders
JOIN customers ON customers.CustomerID = orders.CustomerID
WHERE CompanyName LIKE 'Du%'
ORDER by OrderDate DESC 
LIMIT 1


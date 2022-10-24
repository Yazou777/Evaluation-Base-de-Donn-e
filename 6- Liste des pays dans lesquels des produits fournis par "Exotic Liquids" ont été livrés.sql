SELECT ShipCountry AS 'Pays'
FROM suppliers
JOIN products ON products.SupplierID = suppliers.SupplierID
JOIN `order details` ON `order details`.ProductID = products.ProductID
JOIN orders ON orders.OrderID = `order details`.OrderID
WHERE CompanyName LIKE 'Exotic Liquids%'
GROUP BY ShipCountry




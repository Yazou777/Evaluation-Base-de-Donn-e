SELECT ProductName AS 'Produit',UnitPrice AS 'Prix'
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.SupplierID = 1
SELECT CompanyName AS 'Fournisseur', count(ProductName) AS 'Nbre produits'
FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE Country LIKE 'France%'
GROUP BY CompanyName
ORDER BY count(ProductName) DESC 
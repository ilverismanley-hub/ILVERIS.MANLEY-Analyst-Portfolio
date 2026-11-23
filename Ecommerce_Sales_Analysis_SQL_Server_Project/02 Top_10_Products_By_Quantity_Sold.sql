SELECT TOP 10
    p.EnglishProductName AS ProductName,
    SUM(f.OrderQuantity) AS TotalQuantitySold
FROM FactInternetSales f
JOIN DimProduct p
    ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY TotalQuantitySold DESC;
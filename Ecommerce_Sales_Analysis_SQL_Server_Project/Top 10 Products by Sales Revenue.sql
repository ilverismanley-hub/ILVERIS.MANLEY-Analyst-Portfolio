SELECT TOP 10
    p.EnglishProductName,
    SUM(f.SalesAmount) AS TotalSales
FROM FactInternetSales AS f
INNER JOIN DimProduct AS p
    ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY TotalSales DESC;
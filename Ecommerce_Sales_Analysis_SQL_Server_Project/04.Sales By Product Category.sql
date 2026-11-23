SELECT
    pc.EnglishProductCategoryName AS ProductCategory,
    SUM(f.SalesAmount) AS TotalSales
FROM FactInternetSales f
JOIN DimProduct p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN DimProductCategory pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.EnglishProductCategoryName
ORDER BY TotalSales DESC;
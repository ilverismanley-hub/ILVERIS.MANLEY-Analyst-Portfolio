SELECT
    pc.EnglishProductCategoryName AS ProductCategory,
    AVG(f.SalesAmount) AS AverageSales
FROM FactInternetSales f
JOIN DimProduct p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN DimProductCategory pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.EnglishProductCategoryName
ORDER BY AverageSales DESC;

USE AdventureWorksDW2022

SELECT 
    SUM(SalesAmount - TotalProductCost) AS LucroTotal
FROM 
    FactInternetSales

SELECT TOP (100) * FROM FactSales
SELECT * FROM DimStore

SELECT
	StoreName,
	SUM(SalesAmount) AS TotalSales
FROM
	FactSales
LEFT JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY
	StoreName
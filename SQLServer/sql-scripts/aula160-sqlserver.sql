SELECT 
	SUM(SalesAmount) AS 'Total Vendido'
FROM 
	FactSales

SELECT 
	AVG(SalesAmount) AS 'Média de Vendas'
FROM 
	FactSales

SELECT 
	MIN(SalesAmount) AS 'Venda Mínima'
FROM 
	FactSales

SELECT 
	MAX(SalesAmount) AS 'Venda Máxima'
FROM 
	FactSales

SELECT DISTINCT COUNT(ProductKey) FROM FactSales

SELECT TOP (10) * FROM DimProduct

-- Quantidade de produtos por marca
SELECT
	BrandName,
	COUNT(*) AS 'Qtd produtos'
FROM 
	DimProduct
GROUP BY BrandName
	
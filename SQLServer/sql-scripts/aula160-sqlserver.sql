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

SELECT COUNT(*) AS 'Qtd produtos' FROM DimProduct

SELECT DISTINCT COUNT(ProductKey) FROM FactSales
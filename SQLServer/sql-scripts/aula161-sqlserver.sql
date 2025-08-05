SELECT TOP (10) * FROM DimProduct

-- MÉDIA DE VENDAS POR CLASE
SELECT
	BrandName,
	ClassName,
	AVG(UnitPrice) AS 'Preço Médio'
FROM
	DimProduct
/*WHERE
	BrandName = 'Contoso'*/
GROUP BY
	ClassName, BrandName
/*HAVING 
	AVG(UnitPrice) > 100
ORDER BY
	'Preço Médio'
DESC*/

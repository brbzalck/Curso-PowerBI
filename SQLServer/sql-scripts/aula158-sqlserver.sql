SELECT
	ProductName, ColorName, UnitPrice, BrandName
FROM
	DimProduct
WHERE
	UnitPrice >= 1000
ORDER BY 
	UnitPrice 
DESC
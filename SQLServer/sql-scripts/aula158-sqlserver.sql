SELECT
	ProductName, ColorName, UnitPrice, BrandName
FROM
	DimProduct
WHERE ProductName LIKE '%laptop%'

/* WHERE
	BrandName NOT IN ('CONTOSO', 'FABRIKAM')
ORDER BY 
	UnitPrice 
DESC */
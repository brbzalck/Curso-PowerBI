SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory

SELECT
	ProductName,
	ProductSubcategoryName,
	ProductCategoryName
FROM
	DimProduct AS p
INNER JOIN DimProductSubcategory AS s
	ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
		INNER JOIN DimProductCategory AS c
			ON s.ProductCategoryKey = c.ProductCategoryKey
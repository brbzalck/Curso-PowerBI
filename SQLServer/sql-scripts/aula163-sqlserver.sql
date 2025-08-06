-- Dimensão Produto
-- ID PRODUTO / NOME / SUBCATEGORIA / CATEGORIA / MARCA / PREÇO / CUSTO

-- SELECT * FROM DimProduct
-- SELECT * FROM DimProductSubcategory
-- SELECT * FROM DimProductCategory

SELECT
	ProductKey AS 'Id Produto',
	ProductName AS	'Nome',
	ProductSubcategoryName AS 'Subcategoria',
	ProductCategoryName AS 'Categoria',
	BrandName AS 'Marca',
	UnitPrice AS 'Preço',
	UnitCost AS 'Custo'
FROM
	DimProduct AS p
LEFT JOIN DimProductSubcategory AS s
	ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
		LEFT JOIN DimProductCategory AS c
			on s.ProductCategoryKey = c.ProductCategoryKey
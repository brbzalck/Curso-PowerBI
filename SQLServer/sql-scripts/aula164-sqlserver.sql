-- Dimensão Cliente
-- ID CLIENTE / NOME / CONTINENTE / PAIS / ESTADO / CIDADE / GÊNERO / EMAIL / ANIVERSÁRIO / 

-- SELECT * FROM DimGeography
-- SELECT * FROM DimCustomer

/*
CREATE VIEW
ALTER VIEW
DROP VIEW

*/

CREATE VIEW vwCliente AS
SELECT 
	CustomerKey AS 'Id Cliente',
	CASE
		WHEN CustomerType = 'Person' THEN CONCAT(FirstName,' ',LastName)
			ELSE CompanyName
	END AS Nome,
	ContinentName AS 'Continente',
	RegionCountryName AS 'País',
	StateProvinceName AS 'Estado',
	CityName AS 'Cidade',
	Gender AS 'Gênero',
	EmailAddress AS 'Email',
	BirthDate AS 'Aniversário',
	CustomerType
FROM 
	DimCustomer as c
LEFT JOIN DimGeography as g
	ON c.GeographyKey = g.GeographyKey





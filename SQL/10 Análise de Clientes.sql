USE AdventureWorksDW2022;

WITH PERFIL_CLIENTE AS (
	SELECT 
		C.CustomerKey,
		CASE 
			WHEN C.YearlyIncome < 30000 THEN 'Baixa (< 30K)'
			WHEN C.YearlyIncome BETWEEN 30000 AND 70000 THEN 'Média (30K-70K)'
			WHEN C.YearlyIncome > 70000 THEN 'Alta (> 70K)'
			ELSE 'Não informado'
		END AS Faixa_Renda,
		C.Gender,
		C.EnglishEducation
	FROM DimCustomer AS C
),
COMPRAS_CLIENTES AS (
	SELECT 
		CustomerKey,
		SUM(SalesAmount) AS Valor_Comprado
	FROM FactInternetSales
	GROUP BY CustomerKey
)

SELECT 
	P.Faixa_Renda AS FAIXA_RENDA,
	P.Gender AS GENERO,
	P.EnglishEducation AS ESCOLARIDADE,
	COUNT(DISTINCT P.CustomerKey) AS QTDE_CLIENTES,
	FORMAT(SUM(ISNULL(C.Valor_Comprado, 0)), 'N0') AS TOTAL_COMPRADO

FROM PERFIL_CLIENTE AS P
LEFT JOIN COMPRAS_CLIENTES AS C ON C.CustomerKey = P.CustomerKey

GROUP BY 
	P.Faixa_Renda,
	P.Gender,
	P.EnglishEducation

ORDER BY SUM(ISNULL(C.Valor_Comprado, 0)) DESC;

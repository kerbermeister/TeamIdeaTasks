/*
	This is the query for getting a list of the most expensive cars of every single brand
*/

SELECT Brand.brandName,
         Auto.autoModel,
         Auto.price
FROM 
    (SELECT Auto.brandId,
         max(Auto.price) AS price
    FROM Auto
    GROUP BY  auto.brandId) agr
INNER JOIN Auto
    ON agr.brandId = Auto.brandId
        AND agr.price = Auto.price
INNER JOIN Brand
    ON Auto.brandId = Brand.brandId
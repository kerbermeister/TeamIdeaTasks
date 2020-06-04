/*
	This is the query for searching for the car brands with the highest average cost of cars of this brand
*/

SELECT Brand.brandName,
         avg(Auto.price) AS topAverage
FROM Brand
INNER JOIN Auto
    ON (Brand.brandId = Auto.brandId)
GROUP BY  Brand.brandName
ORDER BY  avg(Auto.price) DESC limit 1
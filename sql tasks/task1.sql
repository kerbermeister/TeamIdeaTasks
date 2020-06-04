/*
	This is the query for searching for the number and total cost of cars of each brand 
    (at a certain point in time, there may not be cars of a particular brand)
*/

SELECT Brand.brandName,
         sum(Auto.price) AS sum,
         count(*) AS total
FROM Brand
RIGHT JOIN Auto
    ON Brand.brandId = Auto.brandId
GROUP BY  Brand.brandName;
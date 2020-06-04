/*
	This is the query for counting total numbers of germany auto
*/

SELECT count(*) AS totalCount
FROM Auto
INNER JOIN Brand
    ON Auto.brandId = Brand.brandId
WHERE Brand.brandCountry = 'Germany'
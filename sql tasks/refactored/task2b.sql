/*
	Refactored query for task2b, considering the refactored scheme.
*/

SELECT autoCountry.autoModel
FROM 
    (SELECT autoBrand.autoModel,
         autoBrand.brandCountry,
         Country.countryName
    FROM 
        (SELECT Auto.autoModel,
         Brand.brandCountry
        FROM Auto
        LEFT JOIN Brand
            ON Auto.brandId = Brand.brandId) autoBrand
        JOIN Country
            ON autoBrand.brandCountry = Country.countryId) autoCountry
    WHERE autoCountry.countryName = 'Germany'
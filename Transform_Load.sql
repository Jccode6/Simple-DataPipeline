INSERT INTO properties (property_id, address, city, zip, state, bedrooms, baths, square_footage, property_type)

SELECT 
    ROW_NUMBER() OVER (ORDER BY street) as row_num 
    ,street 
    ,city 
    ,zip 
    ,state 
    ,beds 
    ,baths 
    ,sq__ft 
    ,type  
FROM 
    property_staging


INSERT INTO sale_properties(sale_id, sale_date, list_price, property_id) 
SELECT 
	ROW_NUMBER() OVER (ORDER BY sale_date ) as sale_id
	,CAST(sale_date AS DATE) as sale_date
	,CAST(price AS NUMERIC(10)) as list_price
	,ROW_NUMBER() OVER (ORDER BY street) as property_id
FROM 
	property_staging


INSERT INTO property_locations(location_id, latitude, longitude, property_id)
SELECT 
	ROW_NUMBER() OVER (ORDER BY latitude) as row_num
	,CAST(latitude AS NUMERIC(9,5))
	,CAST(longitude AS NUMERIC(11,7))
	,ROW_NUMBER() OVER (ORDER BY street) as row_num2
FROM 
	property_staging
CREATE TABLE IF NOT EXISTS properties
(
    property_id integer NOT NULL,
    address VARCHAR(100), 
    address2 VARCHAR(15), 
    city VARCHAR(15), 
    zip VARCHAR(5),
    state VARCHAR(2), 
    bedrooms INT,
    baths INT,
    square_footage INT,
    property_type VARCHAR(12), 
    CONSTRAINT properties_pkey PRIMARY KEY (property_id)
);


CREATE TABLE IF NOT EXISTS property_locations
(
    location_id integer INT NOT NULL,
    latitude NUMERIC(9,5),
    longitude NUMERIC(11,7),
    property_id INT,
    CONSTRAINT property_locations_pkey PRIMARY KEY (location_id),
    CONSTRAINT fk_properties FOREIGN KEY (property_id)
        REFERENCES public.properties (property_id) 
);


CREATE TABLE IF NOT EXISTS sale_properties
(
    sale_id INT NOT NULL,
    sale_date DATE,
    list_price NUMERIC(10),
    property_id INT,
    CONSTRAINT sale_properties_pkey PRIMARY KEY (sale_id),
    CONSTRAINT fk_properties FOREIGN KEY (property_id)
        REFERENCES public.properties (property_id) 
)


INSERT INTO property_locations(location_id, latitude, longitude, property_id)
SELECT 
	ROW_NUMBER() OVER (ORDER BY latitude) as row_num
	,CAST(latitude AS NUMERIC(9,5))
	,CAST(longitude AS NUMERIC(11,7))
	,ROW_NUMBER() OVER (ORDER BY street) as row_num2
FROM 
	property_staging

SELECT * FROM rental_property_analysis.building
WHERE buildingage > 50 and haswasher = 1 order by buildingage asc ;

SELECT buildingage , size , AVG(price) FROM rental_property_analysis.building 
WHERE haswasher = 1 and haselevator = 1 and hasgym = 1 
GROUP BY ID , buildingage;

SELECT (size/0.093)/price AS  square_meter_price_house FROM rental_property_analysis.building 
WHERE countofbedrooms = 2 and minimumtosubway <= 10;


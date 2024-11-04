
SELECT DISTINCT SUBSTRING(locations, 
	PATINDEX('%[A-Za-z]+$%', locations), 
	LEN(locations)- PATINDEX('%[A-Za-z]%',locations) + 1) as locations
	from locations;
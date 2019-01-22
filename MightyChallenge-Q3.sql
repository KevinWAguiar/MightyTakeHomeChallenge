SELECT 
	attornies.name, 
	COUNT(DISTINCT case_table.id)
	
FROM attornies

INNER JOIN case_table ON case_table.attorney_id = attornies.id 

GROUP BY attornies.name

ORDER BY COUNT( DISTINCT case_table.id ) DESC;
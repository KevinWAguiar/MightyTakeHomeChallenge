SELECT DISTINCT 
	attornies.name AS attorney_name, 
	attornies.attorney_phone, 
	attornies.attorney_email
	
FROM attornies

INNER JOIN case_table ON attornies.id = case_table.attorney_id

WHERE case_table.agreement_date < NOW() - interval '72 day';
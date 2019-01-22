SELECT DISTINCT 
	liens.case_id, 
	plaintiffs.name AS plaintiff_name, 
	attornies.name AS attorney_name, 
	liens.description AS lien_description
	
FROM liens
	
INNER JOIN case_table ON liens.id = case_table.id
INNER JOIN plaintiffs ON case_table.id = plaintiffs.id
INNER JOIN attornies ON case_table.attorney_id = attornies.id
INNER JOIN lienholder ON liens.lienholder_id = lienholder.id

WHERE lienholder.name = 'General Assembly';

SELECT
	*
FROM 
	campaign
ORDER BY
	goal DESC
LIMIT 10
;

SELECT
ca.category_id,
ca.category,
AVG(c.pledged) as avg_pledged
FROM
	campaign as c
JOIN categories as ca ON
	(c.category_id = ca.category_id)
GROUP BY
	ca.category_id
;

SELECT 
	c.company_name,
	c.goal,
	c.pledged,
	co.first_name,
	co.last_name,
	co.email
FROM
campaign as c
JOIN contact_info as co
ON (c.contact_id = co.contact_id)
WHERE
	c.outcome = 'successful'
;






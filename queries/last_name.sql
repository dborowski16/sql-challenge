SELECT e.last_name, COUNT(e.last_name)
	FROM employees as e
		GROUP BY e.last_name
		ORDER BY COUNT(e.last_name) DESC


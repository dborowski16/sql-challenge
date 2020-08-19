SELECT  e.first_name as First_Name,
		e.last_name as Last_Name,
		e.hire_date as Hire_Date
			FROM employees as e
				WHERE e.hire_date LIKE '%1986'
					ORDER BY e.hire_date ASC



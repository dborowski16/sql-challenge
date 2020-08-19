SELECT  e.emp_no as Employee_Number,
		e.last_name as Last_Name,
		e.first_name as First_Name,
		e.sex as Sex,
		s.salary as Salary
			FROM employees as e
				JOIN salaries as s
					ON s.emp_no = e.emp_no


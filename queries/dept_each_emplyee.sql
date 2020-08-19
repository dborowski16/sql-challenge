SELECT  de.emp_no as Employee_Number,
		e.last_name,
		e.first_name,
		d.Name as Department
			FROM dept_employees as de
				JOIN employees as e
					ON e.emp_no = de.emp_no
				JOIN departments as d
					ON d.dept_no = de.dept_no



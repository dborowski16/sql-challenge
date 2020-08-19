SELECT  m.dept_no,
		d.Name,
		m.emp_no,
		e.last_name,
		e.first_name
			FROM dept_managers as m
				JOIN departments as d
					ON d.dept_no = m.dept_no
				JOIN employees as e
					ON e.emp_no = m.emp_no



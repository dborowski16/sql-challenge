-- Query to find employee data
SELECT  e.emp_no as Employee_Number,
		e.last_name as Last_Name,
		e.first_name as First_Name,
		e.sex as Sex,
		s.salary as Salary
			FROM employees as e
				JOIN salaries as s
					ON s.emp_no = e.emp_no

-- Query to find list of employees hired in 1986
SELECT  e.first_name as First_Name,
		e.last_name as Last_Name,
		e.hire_date as Hire_Date
			FROM employees as e
				WHERE e.hire_date LIKE '%1986'
					ORDER BY e.hire_date ASC

-- Query to find the manager data by department
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

-- Query to find the department for each employee
SELECT  de.emp_no as Employee_Number,
		e.last_name,
		e.first_name,
		d.Name as Department
			FROM dept_employees as de
				JOIN employees as e
					ON e.emp_no = de.emp_no
				JOIN departments as d
					ON d.dept_no = de.dept_no

-- Query to find all employees with first name Hercules and last name starting with B
SELECT  e.first_name,
		e.last_name,
		e.sex
			FROM employees as e
				WHERE first_name = 'Hercules'
					AND last_name LIKE 'B%'

--  Query to find all employees in Sales department
SELECT  de.emp_no,
		e.last_name,
		e.first_name,
		d.Name
			FROM dept_employees as de
				JOIN employees as e
					ON e.emp_no = de.emp_no
				JOIN departments as d
					ON d.dept_no = de.dept_no
			WHERE d.Name = 'Sales'

-- Query to find all employees in Sales and Development departments
SELECT  de.emp_no,
		e.last_name,
		e.first_name,
		d.Name
			FROM dept_employees as de
				JOIN employees as e
					ON e.emp_no = de.emp_no
				JOIN departments as d
					ON d.dept_no = de.dept_no
			WHERE d.Name IN ('Sales','Development') 

-- Query to find the frequency of the last name of employees
SELECT e.last_name, COUNT(e.last_name)
	FROM employees as e
		GROUP BY e.last_name
		ORDER BY COUNT(e.last_name) DESC


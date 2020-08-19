-- Create
CREATE TABLE employees (
  	emp_no INT NOT NULL,
  	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR,
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees

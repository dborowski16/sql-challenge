-- Create a table for the departments
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	Name VARCHAR,
	PRIMARY KEY(dept_no)
);

SELECT * FROM departments

-- Create table for employees and departments
CREATE TABLE dept_employees (
  emp_no INT NOT NULL,
  dept_no VARCHAR
);

SELECT * FROM dept_employees

-- Create table for managers and departments
CREATE TABLE dept_managers (
  dept_no VARCHAR NOT NULL,
  emp_no INT
);

SELECT * FROM dept_managers

-- Create a table for the employee information
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

-- Create a table for employee and manager salaries
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT
);

SELECT * FROM salaries

-- Create a table for job titles
CREATE TABLE titles (
	emp_title_no VARCHAR NOT NULL,
	title VARCHAR,
	PRIMARY KEY (emp_title_no)
);

SELECT * FROM titles

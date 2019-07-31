CREATE TABLE data_titles (
	emp_no INTEGER NOT NULL,
	title VARCHAR,
	from_date DATE,
	to_date DATE
);
SELECT * FROM data_titles;

CREATE TABLE data_departments (
	dept_no	VARCHAR NOT NULL,
	dept_name VARCHAR
);
SELECT * FROM data_departments;

CREATE TABLE data_department_employee (
	emp_no INTEGER NOT NULL,
	dept_no	VARCHAR NOT NULL,
	from_date DATE,
	to_date DATE
);
SELECT * FROM data_department_employee;

CREATE TABLE data_department_manager (
	dept_no	VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date DATE,
	to_date DATE
);
SELECT * FROM data_department_manager;

CREATE TABLE data_employees (
	emp_no INTEGER NOT NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE
);
SELECT * FROM data_employees;

CREATE TABLE data_salaries (
	emp_no INTEGER NOT NULL,
	salary DECIMAL,
	from_date DATE,
	to_date DATE
);
SELECT * FROM data_salaries;
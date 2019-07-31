-- List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT data_employees.emp_no,
data_employees.last_name,
data_employees.first_name,
data_employees.gender,
data_salaries.salary
FROM data_employees
JOIN data_salaries
ON data_employees.emp_no = data_salaries.emp_no;

-- List employees who were hired in 1986.
SELECT data_employees.emp_no,
data_employees.last_name,
data_employees.first_name,
data_employees.hire_date
FROM data_employees
WHERE data_employees.hire_date >= '1986-01-01'
AND data_employees.hire_date <= '1987-01-01';

-- List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.
SELECT data_departments.dept_no,
data_departments.dept_name,
data_department_manager.emp_no AS manager_emp_no,
data_employees.last_name,
data_employees.first_name,
data_department_manager.from_date AS start_date,
data_department_manager.to_date AS end_date
FROM data_department_manager
JOIN data_employees
ON data_department_manager.emp_no = data_employees.emp_no
JOIN data_departments
ON data_department_manager.dept_no = data_departments.dept_no;

-- List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT data_department_employee.emp_no,
data_employees.last_name,
data_employees.first_name,
data_departments.dept_name
FROM data_department_employee
JOIN data_departments
ON data_department_employee.dept_no = data_departments.dept_no
JOIN data_employees
ON data_employees.emp_no = data_department_employee.emp_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM data_employees
WHERE first_name = 'Hercules'
AND last_name ilike 'b%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT data_employees.emp_no,
data_employees.last_name,
data_employees.first_name,
data_departments.dept_name
FROM data_employees
JOIN data_department_employee
ON data_employees.emp_no = data_department_employee.emp_no
JOIN data_departments
ON data_department_employee.dept_no = data_departments.dept_no
WHERE data_departments.dept_no = 'd007';

-- List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT data_employees.emp_no,
data_employees.last_name,
data_employees.first_name,
data_departments.dept_name
FROM data_employees
JOIN data_department_employee
ON data_employees.emp_no = data_department_employee.emp_no
JOIN data_departments
ON data_department_employee.dept_no = data_departments.dept_no
WHERE data_departments.dept_no = 'd007'
OR data_departments.dept_no = 'd005';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name,
COUNT(last_name) AS count_last_name
FROM data_employees
GROUP BY last_name
ORDER BY count_last_name DESC;
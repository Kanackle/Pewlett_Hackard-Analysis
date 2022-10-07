DROP TABLE titles, salaries, dept_manager, dept_employees, employees, departments
-- SELECT * from departments;
-- SELECT * from dept_employees; 
-- SELECT * from dept_manager; 
-- SELECT * from employees; 
-- SELECT * from salaries; 
-- SELECT * from titles; 


SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
	dept_manager.emp_no,
	dept_manager.from_date,
	dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;
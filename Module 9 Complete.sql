--Step 1 List the employee number, last name, first name, sex, and salary of each employee.

select 
	"employees".emp_no, last_name, first_name, sex
	, "Salaries".salary
from "employees"
inner join "Salaries"
on "employees".emp_no = "Salaries".emp_no
;


--Step 2 List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date LIKE '%1986'
;


--Step 3 List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT "Departments".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN "Dept_Manager"
ON  "Dept_Manager".emp_no = employees.emp_no
INNER JOIN  "Departments"
ON "Dept_Manager".dept_no = "Departments".dept_no
;

--Step 4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT "Departments".dept_no, "Departments".dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM employees
INNER JOIN "Dept_Emp"
ON  "Dept_Emp".emp_no = employees.emp_no
INNER JOIN  "Departments"
ON "Departments".dept_no = "Dept_Emp".dept_no
;

--Step 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' AND last_name LIKE 'B%'
;


--Step 6 List each employee in the Sales department, including their employee number, last name, and first name.

SELECT d.dept_name, e.last_name, e.first_name, e.emp_no
FROM "Departments" as d
INNER JOIN "Dept_Emp" as de 
ON de.dept_no = d.dept_no
INNER JOIN employees as e 
ON de.emp_no = e. emp_no
WHERE dept_name = 'Sales'


--Step 7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN "Dept_Emp" AS de
ON e.emp_no = de.emp_no
INNER JOIN "Departments" AS d
ON d.dept_no = de.dept_no
WHERE dept_name IN ('Sales', 'Development')
;

--Step 8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Last Name"
from employees
GROUP BY last_name
ORDER BY "last_name" DESC
;

SELECT last_name, COUNT(last_name) AS "Name Count"
from employees
GROUP BY last_name
ORDER BY "Name Count" DESC
;
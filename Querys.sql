---------------------------------------------------------------------------------------
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
---------------------------------------------------------------------------------------
SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM Employees E
JOIN salaries S ON E.emp_no = S.emp_no;

------------------------------------------------------------------------------------
------------------          		  EXTRA				-----------------------------
-- Show the table of the results with the employee number from first to last
-- displaying only the first 100 results
------------------------------------------------------------------------------------

SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM Employees E
JOIN salaries S ON E.emp_no = S.emp_no
ORDER BY E.emp_no  
LIMIT 100;         

--------------------------------------------------------------------------------------------
-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
--------------------------------------------------------------------------------------------
SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

----------------------------------------------------------------------------------------------
-- 3.List the manager of each department along with their department number, department name,
-- employee number, last name, and first name.
----------------------------------------------------------------------------------------------

SELECT D.dept_no, D.dept_name, E.emp_no, E.last_name, E.first_name
FROM dept_manager DM
JOIN Employees E ON DM.emp_no = E.emp_no
JOIN departments D ON DM.dept_no = D.dept_no;

--------------------------------------------------------------------------------------------
-- 4.List the department number for each employee along with that employee’s
-- employee number, last name, first name, and department name.
--------------------------------------------------------------------------------------------

SELECT DE.emp_no, E.last_name, E.first_name, DE.dept_no, D.dept_name
FROM dept_emp DE
JOIN Employees E ON DE.emp_no = E.emp_no
JOIN departments D ON DE.dept_no = D.dept_no;

--------------------------------------------------------------------------------------------
-- 5. List first name, last name, and sex of each employee whose first
-- name is Hercules and whose last name begins with the letter B.
--------------------------------------------------------------------------------------------

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--------------------------------------------------------------------------------------------
-- 6. List each employee in the Sales department, including their employee number, 
-- last name, and first name.
--------------------------------------------------------------------------------------------

SELECT E.emp_no, E.last_name, E.first_name
FROM Employees E
JOIN dept_emp DE ON E.emp_no = DE.emp_no
JOIN departments D ON DE.dept_no = D.dept_no
WHERE D.dept_name = 'Sales';

--------------------------------------------------------------------------------------------
-- 7. List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
--------------------------------------------------------------------------------------------
SELECT E.emp_no, E.last_name, E.first_name, D.dept_name
FROM Employees E
JOIN dept_emp DE ON E.emp_no = DE.emp_no
JOIN departments D ON DE.dept_no = D.dept_no
WHERE D.dept_name IN ('Sales', 'Development');


--------------------------------------------------------------------------------------------
-- 8. List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name).
--------------------------------------------------------------------------------------------

SELECT last_name, COUNT(*) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;


------------------------------------------------------------------------------------
------------------          		  EXTRA				-----------------------------
-- Show a table with employee number, last name, fist name, department
-- and salary sorted by highest to lowest salary, showing only the first 100 results
------------------------------------------------------------------------------------

SELECT E.emp_no, E.last_name, E.first_name, D.dept_name, S.salary
FROM Employees E
JOIN dept_emp DE ON E.emp_no = DE.emp_no
JOIN departments D ON DE.dept_no = D.dept_no
JOIN salaries S ON E.emp_no = S.emp_no
ORDER BY S.salary DESC  
LIMIT 100;              

------------------------------------------------------------------------------------
------------------          		  EXTRA				-----------------------------
-- Show the same table but adding the title of the employee
------------------------------------------------------------------------------------

SELECT E.emp_no, E.last_name, E.first_name, T.title, D.dept_name, S.salary
FROM Employees E
JOIN dept_emp DE ON E.emp_no = DE.emp_no
JOIN departments D ON DE.dept_no = D.dept_no
JOIN salaries S ON E.emp_no = S.emp_no
JOIN titles T ON E.emp_title_id = T.title_id  
ORDER BY S.salary DESC  
LIMIT 100;              
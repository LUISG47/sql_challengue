------------------------------------------------------------------------------------
--List the employee number, last name, first name, sex, and salary of each employee.
------------------------------------------------------------------------------------

SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM Employees E
JOIN salaries S ON E.emp_no = S.emp_no;

----------------------------------------------------------------------------------------
--List the first name, last name, and hire date for the employees who were hired in 1986.
----------------------------------------------------------------------------------------

SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--------------------------------------------------------------------------------------------
-- List the manager of each department along with their department number, department name,
-- employee number, last name, and first name.
--------------------------------------------------------------------------------------------

SELECT D.dept_no, D.dept_name, E.emp_no, E.last_name, E.first_name
FROM dept_manager DM
JOIN Employees E ON DM.emp_no = E.emp_no
JOIN departments D ON DM.dept_no = D.dept_no;


--------------------------------------------------------------------------------------------
-- List the department number for each employee along with that employee’s
-- employee number, last name, first name, and department name.
--------------------------------------------------------------------------------------------


SELECT DE.emp_no, E.last_name, E.first_name, DE.dept_no, D.dept_name
FROM dept_emp DE
JOIN Employees E ON DE.emp_no = E.emp_no
JOIN departments D ON DE.dept_no = D.dept_no;


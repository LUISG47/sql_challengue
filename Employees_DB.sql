CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (title_id)
);

CREATE TABLE Employees (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (emp_no),
    CONSTRAINT fk_emp_title FOREIGN KEY (emp_title_id) 
    REFERENCES titles (title_id)  -- Referencing title_id in titles table
);

CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR NOT NULL,
    emp_no INTEGER NOT NULL,
    CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) 
    REFERENCES departments (dept_no)  -- Making dept_no in dept_manager a FK referencing departments
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR NOT NULL
);

CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_no
    )
);

SELECT * FROM Employees;
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM salaries;


ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);




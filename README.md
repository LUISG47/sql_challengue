# CHALLENGUE 9 [SQL]


It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.


## Archives

The CSV that you will be using are located on the **Resources** folder, make sure to point them correctly when you create and import them to the tables.

The table creations are contained on the file named **table_schemata.sql**

The querys for the tables for the analysis are contained in the file named **querys.sql**

The sketch of the Entity Relationship Diagram of the tables was created on QUICKDBD: https://www.quickdatabasediagrams.com/

This is the sketch that served as a guidance for the link between tables:



![QuickDBD-NEW DB](https://github.com/user-attachments/assets/a7f456a7-dce8-4aed-900d-b03391723983)

The Primary Keys and Foreign keys were selected in order to link all tables without problems.



## How to correctly import the tables

This guide shows you how you need correctly import the csv's that you will be working on with.

First be sure to run only the Part 1 of the Table_schemata.sql file in which the tables are created. This is important so you don't get errors when importing the csv's.
Once you have created the 6 tables they must be listed in the Schemas > Tables section as follows:

![Screenshot 2024-12-08 at 3 48 12 p m](https://github.com/user-attachments/assets/e16e437b-3008-4ca2-a00f-8bbef7fb0a50)

Then right click on each one of the tables to import the csv with the same name of the table.

For example for the departments table, right click on it and press the import/export Data:


![Screenshot 2024-12-08 at 4 15 19 p m](https://github.com/user-attachments/assets/a81988e4-a6b3-4bb7-85c7-a665a9c82799)

Then the following window must be displayed for you in order to import fhe csv:

![Screenshot 2024-12-08 at 3 48 45 p m](https://github.com/user-attachments/assets/32709531-f745-4bc0-8f2e-9daf8e3260f3)

**IMPORTANT**
Make sure to activate the Header on the options section when importing the file and to select the employees csv as is the one that will match with the table departments:

![Screenshot 2024-12-08 at 3 48 51 p m](https://github.com/user-attachments/assets/356208c0-b96b-4226-a6b9-74f542dbb355)

![Screenshot 2024-12-08 at 3 49 01 p m](https://github.com/user-attachments/assets/1d8d3f12-4140-4836-bf9f-01e69f817418)

If the import was correct you must see these 2 green confirmations:

![Screenshot 2024-12-08 at 4 17 09 p m](https://github.com/user-attachments/assets/93d3a627-1c13-491a-abf2-7d3f4e2f772d)


Also if the import was successfull you will be able to see the tables as follows when running each of this commands:

SELECT * FROM Employees;

![Screenshot 2024-12-08 at 3 57 30 p m](https://github.com/user-attachments/assets/ff80665e-f291-472c-a066-31be6dd6848e)


SELECT * FROM departments;

![Screenshot 2024-12-08 at 3 57 39 p m](https://github.com/user-attachments/assets/3d62c065-29ff-401f-8406-ed8f747814d3)

SELECT * FROM titles;

![Screenshot 2024-12-08 at 3 57 46 p m](https://github.com/user-attachments/assets/d1d65e0d-bd3f-4258-9824-a976724cca18)

SELECT * FROM dept_manager;

![Screenshot 2024-12-08 at 3 57 53 p m](https://github.com/user-attachments/assets/859c7704-81c6-47d9-8ad6-de67b7845516)

SELECT * FROM dept_emp;

![Screenshot 2024-12-08 at 3 58 03 p m](https://github.com/user-attachments/assets/34eeccce-38cb-4609-af5e-96a07872e672)

SELECT * FROM salaries;

![Screenshot 2024-12-08 at 3 58 10 p m](https://github.com/user-attachments/assets/8db4dbc1-bc60-49ae-9b62-f24921e0cb25)

When you are set with the 6 tables imported correctly you can run the second part in which you will link them to be able to do the querys of the Querys.sql file

## Questions to answer in the Data Analyss

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
   

## Extra Tables

In order to get more insight on the Data the following tables were added to the analysis:

1. Show a table with employee number, last name, fist name, department and salary sorted by highest to lowest salary.
2. Show the same table but adding the title of the employee.
3. Show the count of employees in every department and sort them by highest to lowest.

With this tables we got to see that the data was indeed created randomly for Pewlett Hackard as we saw that the salarys didn't match in proportion to the profile of the role in the company.

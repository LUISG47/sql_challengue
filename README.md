# CHALLENGUE 9 [SQL]


It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.


## Archives

The CSV that you will be using are located on the resources folder, make sure to point them correctly when you create and import them to the tables

The table creations are contained on the file named table_schemata.sql
The querys for the tables for the analysis are contained in the file named querys.sql

The sketch of the Entity Relationship Diagram of the tables was created on QUICKDBD: https://www.quickdatabasediagrams.com/

This is the sketch that served as a guidance for the link between tables:



![QuickDBD-NEW DB](https://github.com/user-attachments/assets/a7f456a7-dce8-4aed-900d-b03391723983)

The Primary Keys and Foreign keys were selected in order to link all tables without problems.


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

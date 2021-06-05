# Pewlett-Hackard-Analysis

## Project Overview

The purpose of this project is to analyse employee data of Pewlett Hackard in order to extract retirement information and 
identify retirement eligibility within the workforce.

A manager at Pewlett Hackard has given the assignment as follows;

* Determine the number of retiring employees per title.

* Identify employees who are eligible to participate in a mentorship program.

* A report that summarizes your analysis and helps prepare the company
  for the “silver tsunami” as many current employees reach retirement age.

### Resources

**Data Source:** Employee_Database_challenge.sql, Employee_Database_challenge _modified.sql, departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv.

**Software:** Visual Studio Code 1.56.0, PostgreSQL 10.17, pgAdmin 4.28.

## Project Results

The below sections analyses the results from the project;

### The Number of Retiring Employees by Title

In this section, I created a table ("retirement_titles") that holds  all the titles of current employees who 
were born between January 1, 1952 and December 31, 1955.

Next step was to identify unique employee titles using "DISTINCT ON" statement and "COUNT()" function 
to create a final table ("retiring_titles") that has the number of retirement-age employees by most recent job title.

The following summary highlights the results from the query;

* The total count of retiring employees is 90,398.

* Senior engineers who are of retirement age make up 33% or 29,414 of the the total count.

* Senior staff who are of retirement age make up 31% or 28,254 of the the total count.

* Engineers who are of retirement age make up 16% or 14,222 of the the total count.

* Staff who are of retirement age make up 14% or 12,243 of the the total count.

* Technique leaders who are of retirement age make up 5% or 4,502 of the the total count.

* Assistant engineers who are of retirement age make up 2% or 1,761 of the the total count.

* Managers who are of retirement age are just 2.

See screenshot below showing extract from PostgreSQL;

![Retiring_title](https://user-images.githubusercontent.com/81701640/120739299-4f1c8980-c4bf-11eb-9239-855fda07666c.png)

### The Employees Eligible for the Mentorship Program

This section involves creating a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

The result of the SQL query is as follows;

* There are 1,549 employees eligible for the mentorship program.

* Senior engineers who are eligible for the mentorship program make up 11% or 169 of the the total count.

* Senior staff who are eligible for the mentorship program make up 37% or 569 of the the total count.

* Engineers who are eligible for the mentorship program make up 32% or 501 of the the total count.

* Staff who are eligible for the mentorship program make up 10% or 155 of the the total count.

* Technique leaders who are eligible for the mentorship program make up 5% or 77 of the the total count.

* Assistant engineers who are eligible for the mentorship program make up 5% or 78 of the the total count.

* There are no managers eligible for the mentorship program.

See screenshot below showing extract from PostgreSQL;

![mentorship](https://user-images.githubusercontent.com/81701640/120739578-afabc680-c4bf-11eb-8c56-4bc6eb96b954.png)

## Summary

From the above analysis, there are 90,398 that needs to be filled as a result of the impending "Silver Tsunami".

Only 1,549 employees are eligible to participate in the mentorship program.

There is an insufficent number of staff who are qualified, retirement ready employees in the department to mentor the next generation of Pewlett Hackard employees.

Looking at the numbers, the ratio of mentors to new employee will be 1 : 58. This will be a lot of work for the mentors.

One solution to this problem will be to modify the criteria for the mentorship program to people born between 1964 - 1965, this will increase the ratio mentors to new employee significantly.

Reviewing the result of the newly created table "mentorship_eligibility_modified" to account for this modification. We see an improved count in the ratio, from 1 : 58 to 1 : 4.

Another plausible solution to this will be to get the count of the retirement age by year of those born between 1952 and 1955. Then advise the company to adopt a yearly hiring quota using the count 
from this analysis.Hence, reducing the pressure of doing a large scale replacement of the retiring workforce.

Going by this approach, the company will hire 21,209, 22,857, 23,228, 23,104 in the first year, second year, third year and fourth year respectively. Refer to table "retiring_titles_modified"

See modified queries/tables in the attached Employee_Database_challenge _modified.sql file under the Queries folder.

**Nnaemeka Enukorah**

**June 3rd, 2021**




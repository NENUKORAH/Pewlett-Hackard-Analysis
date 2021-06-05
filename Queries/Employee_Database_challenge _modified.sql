SELECT e.emp_no, e.first_name, e.last_name, e.birth_date,
    tt.titles, tt.from_date, tt.to_date
INTO retirement_titles_new
FROM employees as e
INNER JOIN titles as tt 
ON e.emp_no = tt.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	birth_date,
	titles
INTO unique_titles_news
FROM retirement_titles_new
ORDER BY emp_no, to_date DESC;

Select DISTINCT EXTRACT(YEAR FROM "birth_date") as Year, Count (emp_no)
INTO retiring_titles_modified
from unique_titles_news
GROUP BY Year
ORDER BY count(emp_no) DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
    e.first_name, e.last_name,e.birth_date,
    de.from_date, de.to_date,
    tt.titles
INTO mentorship_eligibility_modified
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as tt
ON (e.emp_no = tt.emp_no)
WHERE (e.birth_date BETWEEN '1964-01-01' AND '1965-12-31')
    AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

Select * from mentorship_eligibility_modified;

Select * from retiring_titles_modified;
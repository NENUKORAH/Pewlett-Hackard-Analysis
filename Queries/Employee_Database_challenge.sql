
SELECT e.emp_no, e.first_name, e.last_name,
    tt.titles, tt.from_date, tt.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as tt 
ON e.emp_no = tt.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

select * from retirement_titles
	
SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	titles
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select * from unique_titles;

SELECT COUNT(emp_no), titles
INTO retiring_titles
FROM unique_titles
GROUP BY titles
ORDER BY count(emp_no) DESC;

Select * from retiring_titles;

SELECT DISTINCT ON (e.emp_no) e.emp_no, 
    e.first_name, e.last_name,e.birth_date,
    de.from_date, de.to_date,
    tt.titles
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as tt
ON (e.emp_no = tt.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
    AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

select * from mentorship_eligibility
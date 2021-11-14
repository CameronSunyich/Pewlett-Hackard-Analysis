-- Challenge 7: Deliverable 1- The Number of Retiring Employees by Title
-- Create a Retirement Titles table that holds all the  titles of current employees.
-- Who were born between 01-01-52 and 12-31-55.
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '2052-01-01' AND '2055-12-31')
ORDER BY e.emp_no ASC, to_date DESC;
--DROP TABLE retirement_titles;
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;
--DROP TABLE unique_titles
-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(ut.emp_no),
ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;


--Deliverable  2: Create a mentorship-eligibility table that holds the current employees who were born between 01-01-65 and 12-31-65.

SELECT DISTINCT ON(e.emp_no) e.emp_no, 
    e.first_name, 
    e.last_name, 
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
INTO mentorship_eligibilty
FROM employees as e
LEFT OUTER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
LEFT OUTER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '2065-01-01' AND '2065-12-31')
--AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC;
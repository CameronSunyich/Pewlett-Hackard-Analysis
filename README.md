# Pewlett-Hackard-Analysis

## Overview of the analysis:
Bobby's manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and help prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.
Submit the Following:
-Deliverable 1: The Number of Retiring Employees by Title
-Deliverable 2: The Employees Eligible for the Mentorship Program
-Deliverable 3: A written report on the employee database analysis (README.md)

## Results:
- As it can be seen there is a large number of employees that will be retiring soon, about 90,398 employees. This is nearly a third of the entire employees within the company.
- Over half of these soon to be retirees are in senior staff positions too.
(Show retiring_titles.csv)
- There is also a large number of employees eligible for the mentorship program. This means even more retirees down the line.
- However, those available for mentorship are much less than those retiring a 45:1 ratio of soon to retire and those able to mentor.
(Show mentorship_eligibility.csv)

## Summary:
In the next  5-10 years this company will go through a massive change in personnel. When comparing the availability of mentors compared to those soon to retire. I would recommend looking into other sources to fill these needed positions. I'd prioritize senior staff positions for mentorships roles, overall look into other employment resources.
With that being said, creating a query to keep track of the counted titles of employees from the mentorship_eligibility would provide a better idea of what positions will can be filled. This could be coded such as:

-- Creating a table called "mentorship_titles" to count the titles from mentorship_eligiblity.csv.

"SELECT COUNT(me.emp_no),

me.title

INTO mentorship_titles

FROM mentorship_eligibility as me

GROUP BY title 

ORDER BY COUNT(title) DESC;"

This would create a table with the title count of positions eligible for mentorship. This will be helpful to compare the retiring_title.csv data and to help the company have a consistent amount of mentors. As seen below.
(Show table of mentorship_titles.csv)




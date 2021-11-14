# Pewlett-Hackard-Analysis

## Overview of the analysis:
Bobby's manager has given both of you two more assignments: determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then, you’ll write a report that summarizes your analysis and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.
Submit the Following:
-Deliverable 1: The Number of Retiring Employees by Title
-Deliverable 2: The Employees Eligible for the Mentorship Program
-Deliverable 3: A written report on the employee database analysis (README.md)

## Results:
- As it can be seen there is a large number of employees that will be retiring soon, about 90,398 employees. This is nearly a third of the entire employees within the company.
- Over half of these soon to be retirees are in senior staff positions too.
(Show retiring_titles.csv)
- There is also a large amount of employees eligiable for the mentorship program. This means even more retirees down the line.
-However those avaible for mentorship is much less than those retiring a 45:1 ratio of soon to retire and those able to mentor.
(Show mentorship_eligibility.csv)

## Summary:
Like that data shows, in the next  5-10 years this company will go through a massive change in personale. Comparing the availablity of mentors compared to those soon to retire. I would recommend looking into other sources to fill these needed positions. I'd prioritize senoir staff positions for mentorships roles, but overall look into other employment resources.
With that being said creating a query to keep track of the titles of employees able for mentorship_eligibility. This could be coded such as:

-- Creating table called "mentorship_titles" to count the titles from mentorship_eligiblity.csv.

"SELECT COUNT(me.emp_no),

me.title

INTO mentorship_titles

FROM mentorship_eligibility as me

GROUP BY title 

ORDER BY COUNT(title) DESC;"

This would create a table with the title count of positions eligible for mentorship. This will be helpful to compare the retiring_title data and to help the company have a consistant amount of mentors.

Another important aspect for this company is tracking salaries for the company. With nearly a third of the company soon retire means the finance department will have a lot of changes to deal with. It will be important to track the salaries of those retiring to better understand how this will affect company profits.
This could  be done by joining the "salaries.csv" and "retiring_titles.csv" with the "emp_no" as their key. This query could be written such as:

--Creating table called "retirement_salaries" for a joined table of Salaries.csv and Retirement_titles.csv.

SELECT (rrt.emp_no) rrt.emp_no,

  rrt.first_name,
  
  rrt.last_name,
  
  rrt.titles,
  
  rrt.from_date,
  
  rrt.to_date,
  
  s.salary
  
 INTO retirment_salaries
 
 FROM retirement_titles AS rrt
 
 LEFT JOIN salaries as s
 
 ON (rrt.emp_no = s.emp_no)
 
 ORDER BY rrt.emp_no ASC;
 
Using the code provided above will allow for the creation two seperate tables "retirement_salaries" and "mentorship_titles". This  will be helpful in preparing to the company to shift such a large work force to retirement and can be used in the future to deal with this event in the coming years.
  

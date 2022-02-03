SELECT t.title AS "Title", sum(s.salary) AS "Total Spent" FROM titles t
INNER JOIN salaries s ON t.emp_no = s.emp_no
GROUP BY t.title;
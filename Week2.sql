SELECT t.title AS "TITLE", count(e.birth_date) AS "Number born after 1965-1-1" FROM employees e
INNER JOIN titles t ON t.emp_no = e.emp_no
WHERE birth_date > '1965-1-1'
GROUP BY title;
SELECT t.title as "Title", avg(s.salary) as "Average Salary" from salaries s
INNER JOIN titles t ON s.emp_no = t.emp_no
GROUP BY title;

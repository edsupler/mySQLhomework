SELECT t.title AS "TITLE", count(e.birth_date) AS "Number born after 1965-1-1" FROM employees e
INNER JOIN titles t ON t.emp_no = e.emp_no
WHERE birth_date > '1965-1-1'
GROUP BY title;
SELECT t.title as "Title", avg(s.salary) as "Average Salary" from salaries s
INNER JOIN titles t ON s.emp_no = t.emp_no
GROUP BY title;
SELECT ds.dept_name AS 'Department Name', FORMAT (sum(s.salary),2) AS "Total Spent" FROM dept_emp AS d
INNER JOIN salaries AS s ON d.emp_no = s.emp_no AND s.from_date >= '1990-01-01' AND s.from_date <= '1992-01-01'
INNER JOIN departments AS ds ON ds.dept_no = d.dept_no
WHERE ds.dept_name = 'Marketing'  
GROUP BY ds.dept_name;
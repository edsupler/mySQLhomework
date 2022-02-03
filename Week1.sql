SELECT * FROM employees WHERE birth_date < '1965-01-01';
SELECT * FROM employees WHERE hire_date >= '1990-01-01';
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'f%' LIMIT 50;
INSERT INTO employees VALUES (100, '2002-12-23', 'Stevie', 'Wonder', 'M', '2011-01-01'),
(101, '1978-03-02', 'John', 'Bakersfield', 'M', '2013-03-04'),
(102, '1956-04-12', 'Pat', 'Jones', 'F', '2012-04-05');
UPDATE employees SET first_name = 'Bob' WHERE emp_no = 10023;
UPDATE employees SET hire_date='2002-01-01' WHERE first_name LIKE 'p%' OR last_name LIKE 'p%';
DELETE FROM employees WHERE emp_no < 10000;
DELETE FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
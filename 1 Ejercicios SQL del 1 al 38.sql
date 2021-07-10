select * from employees;
select emp_no, first_name from employees;
select distinct first_name from employees;
select distinct first_name from employees order by first_name;
select distinct first_name from employees order by first_name DESC;
select distinct first_name from employees order by first_name ASC;
SELECT DISTINCT first_name, last_name FROM employees;
SELECT DISTINCT first_name, last_name FROM employees order by first_name, last_name;
SELECT DISTINCT first_name, last_name FROM employees order by first_name DESC, last_name DESC;
SELECT DISTINCT first_name, last_name FROM employees order by first_name ASC, last_name ASC;
SELECT * FROM employees limit 100;
SELECT * FROM employees order by emp_no limit 100;
SELECT * FROM employees order by emp_no ASC limit 100;
SELECT * FROM employees order by emp_no DESC limit 100;
SELECT * FROM employees WHERE first_name LIKE 'Basil';
SELECT * FROM employees WHERE first_name LIKE 'Basil' AND gender LIKE 'M';
SELECT * FROM employees WHERE first_name LIKE 'Basil' AND gender <> 'M';
SELECT * FROM employees WHERE first_name LIKE 'Basil' AND last_name LIKE 'Strooper' AND gender LIKE 'M';
SELECT * FROM employees WHERE first_name LIKE 'Crist%';
SELECT * FROM employees WHERE first_name LIKE '%zette';
SELECT * FROM employees WHERE first_name LIKE '%zette' AND gender LIKE 'M';
SELECT * FROM employees WHERE first_name LIKE '%arvi%';
SELECT * FROM employees WHERE first_name LIKE '%arvi%' AND gender LIKE 'M';
SELECT * FROM employees WHERE first_name = 'Yinghua' OR first_name = 'Elvis';
SELECT * FROM employees WHERE (first_name = 'Yinghua' OR first_name = 'Elvis') AND gender LIKE 'M';
SELECT * FROM employees WHERE emp_no = 14037;
SELECT first_name, last_name FROM employees WHERE emp_no = 14037;
SELECT * FROM employees WHERE (emp_no = 15037 OR emp_no = 14039 OR emp_no = 16039);
SELECT * FROM employees WHERE emp_no BETWEEN 14037 AND 14047;
SELECT * FROM employees WHERE (emp_no >= 14037 AND emp_no <= 14047);
SELECT * FROM employees WHERE first_name LIKE 'Crist%' AND emp_no > 485733;
SELECT * FROM employees WHERE first_name LIKE 'Crist%' AND emp_no >= 485733;
SELECT * FROM employees WHERE first_name LIKE 'Crist%' AND emp_no < 37126;
SELECT * FROM employees WHERE first_name LIKE 'Crist%' AND emp_no <=37126;
SELECT * FROM employees WHERE emp_no IN (494831,479832,599833,499832) AND gender IN ('M','F');
SELECT * FROM employees WHERE emp_no IN (494831,479832,599833,499832) AND gender IN ('M','F') limit 10;








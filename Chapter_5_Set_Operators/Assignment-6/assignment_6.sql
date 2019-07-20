@Analytics Tensor LLC
SQL Queries Assignment
Purpose: This assignment helps to understand and write sql queries efficiently.

1. Select all the employees details from the employees table. -- select * from employees
2. Select first name, last name and gender from employees table. -- select first_name, last_name, gender from employees
3. Select full name of employees with alias "employee name". -- select concat(first_name, ' ', last_name) from employees
4. Select upper first name and lower last name of all employees. -- select upper(first_name), lower(last_name) from employees
5. Select all the employees whose first name start with 'S' and last name ends with 'n'. -- select * from employees where first_name like 'S% and last_name like '%n'
6. Select full name of employees sorted in ascending order. -- select concat(first_name, ' ', last_name) as full_name from employees order by first_name,last_name
7. Select first 3 character from firstname and last 6 character from lastname all in lowercase with alias username from employees. -- select lower(concat(substring(first_name,1,3),substring(last_name,1,6))) as username from employees  
8. Find the position of 'e' in employees firstname. -- select locate('e',first_name) from employees   
9. Trim all the white spaces (i.e. both left and right) from employees firstname. -- select rtrim(ltrim(first_name)) from employees  
10. Find the length of employees first name. -- select length(first_name) from employees
11. Select employees first name by replacing first 4 character with 'x'. -- select concat('xxxx',substring(first_name,4)) from employess 
12. Select last 4 character from first name. -- select substring(first_name,length(first_name)-3,length(first_name)) from employees
13. Select first name and last name separated by '.' in lower case. -- select lower(first_name,'.',last_name) from employees   
14. Select all employees whose first name contains 'a'. -- select * from employees where first_name like '%a%'
15. Select all employees whose first name ends with 'a' and name contains only 7 letter. -- select * from employees where first_name like '______a'
16. Find the age of employees based on year excluding month and day.-- select year(date(now()))-year(birth_date) as emp_age from employees  
17. Create function to calcuate employees age based on year,month and day. -- todo  
18. Select all employee hired on year 2000 sorted by last name. -- select * from employees where year(hire_date) = '2000' order by last_name
19. Select all employees born is July. -- select * from employees where month(birth_date)=7 
20. Select all employees hired before 1990-01-01. -- select * from employees where hire_date < '1990-01-01'
21. Select all employees hired after 1997-01-01. -- select * from employee where hire_date > '2000-01-01'
22. Select employee birth date in mm/dd/yy format. -- select date_format(birth_date,"%m/%d/%y") from employees 
23. Select employee birth date in dd/mm/yyyy format. -- select date_format(birth_date,"%m/%d/%Y") from employees 
24. Select employee birth date in fullmonth,day,year format. -- select date_format(birth_date,"%M,%d,%Y") from employees 
25. Select current timestamp -- select now(), sysdate()
26. Select employee birth date by adding 10 days. -- select date_add(birth_date, INTERVAL 10 DAY) as added_10days from employee ;
27. Select employee birth date by subtracting 10 days to employee birth date. -- select date_sub(birth_date, INTERVAL 10 DAY) as added_10days from employee ;
28. Select unique dept_no from dept_emp table. -- select distinct dept_no from dept_emp
29. Select unique title from titles table. -- select distinct title from titles
30. Select department number for finance, sales, research and marketing sorted by dept_no in descending order. -- select dept_no from departments where dept_name in ('finance', 'sales', 'research', 'marketing') order by dept_no desc; 
31. Find total employee from employees table. -- select count(*) from employees ;
32. Find total male and female in employees table. -- select gender,count(*) from employees group by gender
33. Find minimum and maximum salary from salaries table. -- select min(emp_no), max(emp_no) from employees
34. Find total distinct department from departments table. -- select count(distinct dept_no) total_dept from departments
35. Find the current employee working department from employees and dept_emp table. -- select distinct e.emp_no, d.dept_no, d.from_date, d.to_date from employees e join dept_emp d on e.emp_no = d.emp_no join ( select emp_no, max(from_date) as max_date from dept_emp d1 group by emp_no ) d1 on d.emp_no = d1.emp_no and d.from_date = d1.max_date
36. Find all the employees who changed the department more than 1 times. -- select emp_no, count(dept_no) from dept_emp group by emp_no having count(dept_no) > 1
37. Find the manager of all employees. -- to do
38. Find the minimum, maximun and average salary for each year sorted by year. -- select year(from_date) as year, min(salary) min_sal ,max(salary) max_sal ,avg(salary) avg_sal from salaries group by year(from_date) order by year 
39. Select top 10 highest salaries paid employees including salary, dept_no and dept_name. -- select distinct e.emp_no, e.first_name, e.last_name,s.salary, s.from_date, s.to_date, d.dept_no, d.dept_name from employees e join salaries s on e.emp_no = s.emp_no join dept_emp de on e.emp_no=de.emp_no join departments d on de.dept_no = d.dept_no  order by salary desc, from_date asc limit 10
40.  

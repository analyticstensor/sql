Choose top 10 SQL functions from slide 23. And construct one SQL statement using employee database. You use any tables from that database. If you are familiar with JOIN you can utilize that as well.   
Instruction:  
Output file format should be JSON file. All other file will be ignore and graded with 0.  
Extra credit: 80 point, if you create all the SQL statement using join or subquery.    
Example:  
{  
	”name”:“concat_ws(string separator,string_1,string_2)”  
	“usage”:“concat two string with string separator”  
	“string_separator”:“ “  
	“string_1”:“first_name”  
	“string_2”:“lastr_name”  
	“database”:“employee”  
	“sql_statement”:“select concat_ws(" ",first_name, last_name) as fullname from employees limit 10 ;”  
	“isjoin”:true  
	“join_statement”:“select e.emp_no as 'Employee ID' , concat_ws(" ",e.first_name, e.last_name) as 'Employee Fullname’, 	 s.salary        as 'Annual Wage' from employees e inner join salaries s on e.emp_no = s.emp_no order by s.salary desc limit 10 ;”  
}    
Submission: Use sample from Json file in same folder.







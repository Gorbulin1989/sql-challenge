-------DATA ANALYSIS PART----------------

--List the employee number, last name, first name, sex, and salary of each employee.
select "Employee".emp_no, "Employee".last_name, "Employee".first_name, "Employee".sex, "Salaries".salary
from "Employee"
Inner Join "Salaries" On "Employee".emp_no="Salaries".emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date
from "Employee"
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.


select "dept_manager".dept_no, "dept_manager".emp_no, "departments".dept_name, "Employee".last_name,"Employee".first_name
from "Employee"
inner join "dept_manager" on "Employee".emp_no= "dept_manager".emp_no
inner join "departments" on "departments".dept_no= "dept_manager".dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select*
from dept_emp;


SELECT "dept_emp".dept_no, "dept_emp".emp_no, "Employee".last_name, "Employee".first_name, "departments".dept_name
FROM "Employee"
INNER JOIN "dept_emp" ON "Employee".emp_no="dept_emp".emp_no
INNER JOIN "departments" ON "dept_emp".dept_no="departments".dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select "Employee".first_name, "Employee".last_name, "Employee".sex
from "Employee"
where first_name = 'Hercules'
and last_name like 'B%';


--List each employee in the Sales department, including their employee number, last name, and first name.

select "departments".dept_name,"Employee".emp_no,"Employee".last_name, "Employee".first_name
from "Employee"
inner join "dept_emp" on "Employee".emp_no = "dept_emp".emp_no
inner join "departments" on "dept_emp".dept_no = "departments".dept_no
where "departments".dept_name ='Sales';


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select "Employee".emp_no,"Employee".last_name,"Employee".first_name,"departments".dept_name
from "Employee"
inner join "dept_emp" on "Employee".emp_no = "dept_emp".emp_no
inner join "departments" on "dept_emp".dept_no = "departments".dept_no
where "departments".dept_name ='Development' or "departments".dept_name = 'Sales';



--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select last_name, count(*) as count
from "Employee"
group by last_name
order by last_name desc;


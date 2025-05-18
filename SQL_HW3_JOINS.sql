--1. Retrieve all employees whose salaries are in a database, along with their salarys.
select e.employee_name, s.monthly_salary 
from employee_salary es inner join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id; 

--2. Retrieve all employees who has a salary less than 2000.
select e.employee_name, s.monthly_salary 
from employee_salary es inner join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id 
where monthly_salary < 2000;

-- 3. Retrieve all salaries but an employee is not assigned on them. 
-- (There is a salary, but it's not clear who receives it)
select monthly_salary, employee_name 
from employee_salary es full join salary s on es.salary_id = s.id 
full join employees e on es.employee_id = e.id 
where employee_name is null;

--4. Retrieve all salaries less than 2000 but the employee is not assigned on this salary. 
-- (There is a salary, but it's not clear who receives it)
select monthly_salary, employee_name 
from employee_salary es full join salary s on es.salary_id = s.id 
full join employees e on es.employee_id = e.id 
where employee_name is null and monthly_salary < 2000;

--5. Retrieve all employees who is not assigned on salary. 
select employee_name, monthly_salary 
from employee_salary es full join employees e on es.employee_id = e.id 
full join salary s on es.salary_id = s.id 
where monthly_salary is null;

-- 6. Retrieve all employees with the name of their job title. 
select employee_name, role_name 
from roles_employee re join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id;

-- 7. Retrieve name and job title of only Java developers. 
select employee_name, role_name 
from roles_employee re inner join employees e ON re.employee_id = e.id 
inner join roles r on re.role_id = r.id
where role_name like '% Java developer';

-- 8. Retrieve name and job title of only Python developers. 
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Python developer';

-- 9. Retrieve name and job title of all QA Engineers. 
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer';

-- 10. Retrieve name and job title of all Manual QA Engineers.
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Manual QA engineer';

-- 11. Retrieve name and job title of all Automation QA Engineers. 
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Automation QA engineer';

-- 12. Retrieve name and salaries of Junior position.
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Junior%';

-- 13. Retrieve name and salaries of Middle position.
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Middle%';

-- 14. Retrieve name and salaries of Senior position.
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Senior%';

-- 15. Retrieve job title and salaries of Java developers. 
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Java developer';

-- 16. Retrieve job title and salaries of Python developers. 
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Python developer';

-- 17.  Retrieve name and salaries of Junior Python developers.
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Junior Python developer';

-- 18. Retrieve name and salaries of Middle JS developers. 
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Middle JavaScript developer';

-- 19. Retrieve name and salaries of Senior Java developers. 
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Senior Java developer';

-- 20. Retrieve name and salaries of Junior QA Engineers. 
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Junior% QA engineer';

-- 21. Retrieve average salary of Junior position. 
select avg(monthly_salary) avg_Junior 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%Junior%';

-- 22. Retrieve summ of salary of JavaScript developers. 
select sum(monthly_salary) sumJS 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%JavaScript developer';

-- 23. Retrieve min salary of QA Engineers.
select min(monthly_salary) minQA 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer';

-- 24. Retrieve max salary of QA Engineers.
select max(monthly_salary) maxQA 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer';

-- 25. Retrieve amount of QA Engineers.
select count(role_name) countRole 
from roles r inner join roles_employee re on r.id = re.role_id 
where role_name like '%QA engineer';

-- 26. Retrieve amount of Middle employees.
select count(role_name) countRole 
from roles r inner join roles_employee re on r.id = re.role_id 
where role_name like '%Middle%';

-- 27. Retrieve amount of developers.
select count(role_name) countRole 
from roles r inner join roles_employee re on r.id = re.role_id 
where role_name like '%developer';

-- 28. Retrieve sum of developers' salaries.
select sum(monthly_salary) sum_salary 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%developer';

-- 29. Retrieve name, position and salary all employees in asc order.
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id 
order by monthly_salary asc;

-- 30. Retrieve name, position and salary all employees in asc order, where salary in range between 1700 to 2300.
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. Retrieve name, position and salary of all employees, where salary less than 2300.
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id
where monthly_salary < 2300
order by monthly_salary asc;

-- 32. Retrieve name, position and salary of all employees, where salary is 1100, 1500, 2000.
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id
where monthly_salary in(1100, 1500, 2000)
order by monthly_salary asc;


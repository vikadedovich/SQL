--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select e.employee_name, s.monthly_salary 
from employee_salary es inner join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id; 

--2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary 
from employee_salary es inner join employees e on es.employee_id = e.id 
inner join salary s on es.salary_id = s.id 
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. 
--(ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name 
from employee_salary es full join salary s on es.salary_id = s.id 
full join employees e on es.employee_id = e.id 
where employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary, employee_name 
from employee_salary es full join salary s on es.salary_id = s.id 
full join employees e on es.employee_id = e.id 
where employee_name is null and monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
select employee_name, monthly_salary 
from employee_salary es full join employees e on es.employee_id = e.id 
full join salary s on es.salary_id = s.id 
where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employee_name, role_name 
from roles_employee re join employees e on re.employee_id = e.id 
join roles r on re.role_id = r.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name 
from roles_employee re inner join employees e ON re.employee_id = e.id 
inner join roles r on re.role_id = r.id
where role_name like '% Java developer';

-- 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Python developer';

-- 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer';

-- 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Manual QA engineer';

-- 11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Automation QA engineer';

-- 12. Вывести имена и зарплаты Junior специалистов
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employee_name, role_name 
from roles_employee re inner join employees e on re.employee_id = e.id 
inner join roles r on re.role_id = r.id 
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Java developer';

-- 16. Вывести зарплаты Python разработчиков
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Python developer';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Junior Python developer';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Middle JavaScript developer';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Senior Java developer';

-- 20. Вывести зарплаты Junior QA инженеров
select role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
where role_name like '%Junior% QA engineer';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) avg_Junior 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) sumJS 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%JavaScript developer';

-- 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) minQA 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer';

-- 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) maxQA 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%QA engineer';

-- 25. Вывести количество QA инженеров
select count(role_name) countRole 
from roles r inner join roles_employee re on r.id = re.role_id 
where role_name like '%QA engineer';

-- 26. Вывести количество Middle специалистов.
select count(role_name) countRole 
from roles r inner join roles_employee re on r.id = re.role_id 
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков
select count(role_name) countRole 
from roles r inner join roles_employee re on r.id = re.role_id 
where role_name like '%developer';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) sum_salary 
from employee_salary es inner join salary s on es.salary_id = s.id 
inner join roles_employee re on es.employee_id = re.employee_id 
inner join roles r on re.role_id = r.id 
where role_name like '%developer';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id 
order by monthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id
where monthly_salary < 2300
order by monthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary 
from roles r inner join roles_employee re on r.id = re.role_id  
inner join employee_salary es on re.employee_id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join employees e on re.employee_id = e.id
where monthly_salary in(1100, 1500, 2000)
order by monthly_salary asc;


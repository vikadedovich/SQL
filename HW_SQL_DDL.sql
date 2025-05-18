--1.Create table "employees"
create table employees(
		 id serial primary key,
		 employee_name varchar (50) not null
);
		 
select * from employees;

--2.Fill the table "employee" with 70 rows

insert into employees (employee_name)
values 
    ('Lacy Langley'),
  ('Ross Hamilton'),
  ('Patience Koch'),
  ('Gil Hubbard'),
  ('Skyler Townsend'),
  ('Yvonne Figueroa'),
  ('Alan Barlow'),
  ('Adele Tillman'),
  ('Echo Howell'),
  ('Russell Crosby'),
  ('MacKensie Mack'),
  ('Ignatius Perry'),
  ('Cara Roy'),
  ('Cheryl Weber'),
  ('Shannon Barrett'),
  ('Xander Schwartz'),
  ('Dante Fernandez'),
  ('Xander Farrell'),
  ('Kaye Lucas'),
  ('Aladdin Goodwin'),
  ('Nina Walker'),
  ('Elton Diaz'),
  ('Lewis Fuller'),
  ('August White'),
  ('Cleo Booker'),
  ('Kelsie Prince'),
  ('Joseph Baker'),
  ('Margaret Sharpe'),
  ('Robert Mendoza'),
  ('Ishmael Pruitt'),
  ('Ashely Ayers'),
  ('Fay Beard'),
  ('Wayne Gentry'),
  ('Amal Combs'),
  ('Wyatt Mccormick'),
  ('Frances Santana'),
  ('Madeline Serrano'),
  ('Gray Hudson'),
  ('Bert Rich'),
  ('Elton Riley'),
  ('Margaret Ramos'),
  ('John Lindsay'),
  ('Irene Blair'),
  ('Branden Shelton'),
  ('Connor Randall'),
  ('Denise Merritt'),
  ('Jasmine Chase'),
  ('Shelley Bruce'),
  ('Nasim Nunez'),
  ('Aristotle Hickman'),
  ('Craig Rhodes'),
  ('Macaulay Bowen'),
  ('Audra Melendez'),
  ('Cullen Solomon'),
  ('Anne Spears'),
  ('Todd England'),
  ('Ria Collier'),
  ('Mercedes Boyd'),
  ('Hollee Bradley'),
  ('Breanna Whitaker'),
  ('Keaton Olson'),
  ('Rylee Riddle'),
  ('Abel Fuentes'),
  ('Omar Rogers'),
  ('Xenos Fitzpatrick'),
  ('Stephen Moses'),
  ('Jana Walls'),
  ('Len Benton'),
  ('Jerry Robinson'),
  ('Randall Tran');
  
  
 select * from employees;

--3.Create table "salary"

create table salary (
		id serial primary key,
		monthly_salary int not null
);
--4.Fill the table "salary" with 15 rows

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2500);
      
select * from salary;

--5.Create table "employee_salary"

create table employee_salary(
			id serial primary key,
			employee_id int not null unique,
			salary_id int not null
);

--6.Fill the table "employee_salary" with 40 rows

insert into employee_salary(employee_id, salary_id)
values (3, 7),
(1, 40),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(14,16),
       (50, 5),
       (66, 11),
       (19, 1),
       (17, 2),
       (20, 3),
       (67, 15),
       (68, 5),
       (18, 6),
       (55, 7),
       (29, 14),
       (57, 9),
       (56, 10),
       (54, 11),
       (63, 5),
       (47, 6),
       (35, 8),
       (34, 9),
       (69, 13),
       (90, 1),
       (81, 2),
       (80, 3),
       (79, 14),
       (78, 8),
       (76, 6),
       (75, 15),
       (74, 8),
       (72, 9),
       (71, 10);

select * from employee_salary;

--7. Create table "roles"

create table roles(
		id serial primary key,
		role_name int not null unique
);

--8.Change type of the column "role_name" from int on varchar(30)

alter table roles
alter column role_name type varchar(30);

--9.Fill the table "roles" with 20 rows:

insert into roles(role_name)
values ('Junior Python developer'),
(' Middle Python developer'),
(' Senior Python developer'),
(' Junior Java developer'),
(' Middle Java developer'),
(' Senior Java developer'),
(' Junior JavaScript developer'),
(' Middle JavaScript developer'),
(' Senior JavaScript developer'),
(' Junior Manual QA engineer'),
(' Middle Manual QA engineer'),
(' Senior Manual QA engineer'),
(' Project Manager'),
(' Designer'),
(' HR'),
(' CEO'),
(' Sales manager'),
(' Junior Automation QA engineer'),
(' Middle Automation QA engineer'),
(' Senior Automation QA engineer');

select * from roles;

--10.Create table "roles_employee"

create table roles_employee(
			id serial primary key,
			employee_id int not null unique,
			role_id int not null,
			foreign key(employee_id) references employees(id),
			foreign key(role_id) references roles(id)
);

--11.Fill the table "roles_employee" with 40 rows

insert into roles_employee(employee_id, role_id)
values (7, 2),
       (13, 4),
       ( 3, 9),
       ( 5, 13),
       ( 9, 4),
       ( 11, 2),
       ( 10, 9),
       ( 14, 13),
       ( 12, 3),
       ( 6, 7),
       ( 1,20),
       ( 2, 14),
       ( 4, 17),
       ( 8, 18 ),
       ( 15, 2),
       ( 16, 5),
       ( 17, 8),
       ( 18, 9),
       ( 19, 1),
       ( 20, 19),
       ( 21, 4),
       ( 22, 7),
       ( 23, 10),
       ( 24, 16),
       ( 34, 1),
       ( 35, 13),
       ( 36, 17),
       ( 37, 2),
       ( 38, 6),
       ( 39, 9),
       ( 40, 4),
       ( 25, 15),
       ( 26, 19),
       ( 27, 7),
       ( 28, 10),
       ( 29, 14),
       ( 30, 3),
       ( 31, 2),
       ( 32, 17),
       ( 33, 16);
  
select * from roles_employee;


SELECT * FROM RANKS;
SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENTS;

create table departments(
  	deptid serial primary key,
 	deptname text not null
 );

create table ranks(
	rankid serial primary key,
 	rankdesc text not null,
 	level int
 );

 create table employee(
 	id serial not null,
 	empid int primary key not null,
 	fname text not null,
 	lname text not null,
 	gender varchar(1) check (gender in('M','F','O')),
 	dob date not null,
 	doj date not null,
 	email varchar,
 	salary int not null,
 	reportsto int,
 	deptid serial references departments(deptid),
 	rankid serial references ranks(rankid),
 	createdat Timestamp not null default current_date,
 	updatedat Timestamp not null default current_date,
 	client_reqid json not null
 );
 
  insert into departments(deptname) values ('IT'),('Accounts'),('Marketing'),('HR'),('Administration'),('Research'),('Sales'),('Support'),
 ('Operational'),('Consultant');
 
  insert into ranks(rankdesc , level) values ('CEO',1),('Vice President',2),('President',3),('Assistant Vice President',4),
 ('Chief Operating Officer',5),('Chief Financial Officer',6),('Chief Marketing Officer',7),('Supervisors',8),('Members',9);
 
 insert into employee (empid, fname,lname, gender, dob, doj, email, salary, reportsto, deptid, rankid, client_reqid)
values (1001,'Mary','Amelia','F','1970-01-02','2013-07-24','maryameila@yahoo.com',60000,2,4,3,'{ "Clientid": "Client1001"}'),
  (1002,'John','Oliver','M','1974-03-12','2015-10-12','johnoliver@yahoo.com',55000,3,4,4,'{"Clientid": "Client1002"}'),
  (1003,'Robert','Thomas','M','1974-11-05','2015-11-06','robertthomas@yahoo.com',58000,4,2,3,'{"Clientid": "Client1003"}'),
  (1004,'Sarah','Isla','F','1980-01-02','2018-04-13','sarahisla@yahoo.com',45000,4,5,7,'{"Clientid": "Client1004"}'),
  (1005,'Ann','Poppy','F','1973-09-15','2014-11-30','annpoppy@yahoo.com',61000,2,6,3,'{"Clientid": "Client1005"}'),
  (1006, 'Michael', 'Jordan', 'M', '1975-08-23', '2016-02-28', 'michaeljordan@yahoo.com', 70000,1, 1, 2, '{"Clientid": "Client1006"}'),
  (1007, 'Emily', 'Smith', 'F', '1982-04-17', '2019-08-15', 'emilysmith@yahoo.com', 52000,4, 4, 2, '{"Clientid": "Client1007"}'),
  (1008, 'David', 'Williams', 'M', '1978-12-08', '2017-06-10', 'davidwilliams@yahoo.com', 63000,4, 3, 4, '{"Clientid": "Client1008"}'),
  (1009, 'Emma', 'Johnson', 'F', '1985-06-30', '2020-03-22', 'emmajohnson@yahoo.com', 48000, 8,5, 9, '{"Clientid": "Client1009"}'),
  (1010, 'Christopher', 'Clark', 'M', '1983-11-12', '2019-01-05', 'christopherclark@yahoo.com', 59000,6, 6, 3, '{"Clientid": "Client1010"}'),
  (1011, 'Sophia', 'Harris', 'F', '1976-07-18', '2014-09-28', 'sophiaharris@yahoo.com', 66000,5, 3, 7, '{"Clientid": "Client1011"}'),
  (1012, 'Daniel', 'Taylor', 'M', '1981-02-04', '2016-11-14', 'danieltaylor@yahoo.com', 51000,6, 4, 2, '{"Clientid": "Client1012"}'),
  (1013, 'Olivia', 'Miller', 'F', '1979-05-21', '2015-07-08', 'oliviamiller@yahoo.com', 69000,4, 1, 2, '{"Clientid": "Client1013"}'),
  (1014, 'Andrew', 'Brown', 'M', '1984-09-03', '2018-12-01', 'andrewbrown@yahoo.com', 54000, 5,2, 6, '{"Clientid": "Client1014"}'),
  (1015, 'Ava', 'Davis', 'F', '1977-03-14', '2013-04-25', 'avadavis@yahoo.com', 60000,4, 5, 6, '{"Clientid": "Client1015"}'),
  (1016, 'William', 'Moore', 'M', '1972-01-30', '2014-05-17', 'williammoore@yahoo.com', 62000,3, 3, 2, '{"Clientid": "Client1016"}'),
  (1017, 'Isabella', 'White', 'F', '1986-08-11', '2021-02-09', 'isabellawhite@yahoo.com', 47000,6, 4, 7, '{"Clientid": "Client1017"}'),
  (1018, 'Joseph', 'Anderson', 'M', '1980-04-25', '2017-10-20', 'josephanderson@yahoo.com', 58000,3, 5, 4, '{"Clientid": "Client1018"}'),
  (1019, 'Mia', 'Martin', 'F', '1974-12-19', '2016-06-05', 'miamartin@yahoo.com', 65000,2, 3, 6, '{"Clientid": "Client1019"}'),
  (1020, 'James', 'Thompson', 'M', '1987-02-14', '2019-11-30', 'jamesthompson@yahoo.com', 50000,3, 2, 7, '{"Clientid": "Client1020"}'),
  (1021, 'Ella', 'Wilson', 'F', '1983-06-08', '2018-03-12', 'ellawilson@yahoo.com', 56000,4, 3, 5, '{"Clientid": "Client1021"}'),
  (1022, 'Alexander', 'Hill', 'M', '1979-09-27', '2015-12-18', 'alexanderhill@yahoo.com', 67000,1, 1, 1, '{"Clientid": "Client1022"}'),
  (1023, 'Grace', 'Ward', 'F', '1975-11-03', '2016-09-02', 'graceward@yahoo.com', 49000,6, 2, 1, '{"Clientid": "Client1023"}'),
  (1024, 'Nicholas', 'Baker', 'M', '1986-03-19', '2020-07-25', 'nicholasbaker@yahoo.com', 64000,4, 3, 9, '{"Clientid": "Client1024"}'),
  (1025, 'Aiden', 'Carter', 'M', '1981-07-14', '2017-04-09', 'aidencarter@yahoo.com', 53000,5, 4, 7, '{"Clientid": "Client1025"}');

-- get all fields of all employees,
select * from employee;

--  get name and age of all employees
select fname ||' '|| lname as name, date_part('year',current_date) - date_part('year',dob) as age
from employee


-- get name, dob and doj of all employees from “IT” department,
select e.fname ||' '|| e.lname as name, date_part('year',current_date) - date_part('year',e.dob) as age, date_part('year',current_date) - date_part('year',e.doj) as dojage
from employee e join departments d 
ON e.deptid = d.deptid
where d.deptname = 'IT'

-- update the dob, salary of an employee for a specific employee ID, 
Update employee
set dob = '1990-03-12', salary = 50000 
where empid = 1023

-- Add a few employees in “IT” division at a rank of “Vice President”
insert into employee (empid, fname,lname, gender, dob, doj, email, salary, reportsto, deptid, rankid, client_reqid)
values (1026,'Leela','Chavan','F','1992-09-16','2014-12-10','leelachavan@yahoo.com',78000,3,1,2,'{"Clientid": "Client1026"}');

-- Update Salary of employee “Ranveer” to 100000,
update employee
set salary = 100000 where fname = 'Daniel'

-- Update DoJ of employee “Salman” to 21 Apr 2021
update employee
set doj = '2021-04-21' where fname = 'Sarah';

-- Delete a record for employee “Rahul”
delete from employee where fname ='Leela';

-- Add a new division “Administration”
Insert into departments(deptname) values ('Administration');

-- Add a new rank “Trainee” below “Member” 
insert into ranks(rankdesc , level) values ('Trainee',10);
---- UC1 ----
show databases;
create database Employee_Payroll_Service;
use Employee_Payroll_Service;
---- UC2 ----
create table Employee_Payroll(
id int not null auto_increment,
name varchar(50) not null,
salary double not null,
startDate date not null,
primary key(id)
);
show tables;
---- UC3 ----
insert into employee_payroll (name,salary,startDate)
values('Neeta',500000.0,'2021-01-11');
insert into employee_payroll (name,salary,startDate)
values('Prakash',300000.0,'2021-01-11');
insert into employee_payroll (name,salary,startDate)
values('Aman',25000.0,'2021-11-01');
---- UC4 ----
select * from employee_payroll;
---- UC5 ----
select * from employee_payroll where name='Prakash';
select * from employee_payroll where startDate 
between'2021-04-10' and date(now());
---- UC6 ----
alter table employee_payroll add gender char(1);
update employee_payroll set gender ='M' where id>1;
update employee_payroll set gender ='F' where id=1;
---- UC7 ----
select sum(salary) from employee_payroll;
select gender, sum(salary) from employee_payroll where gender ='F'group by gender;
select gender, sum(salary) from employee_payroll where gender ='M'group by gender;
select gender, min(salary) from employee_payroll where gender ='F'group by gender;
select gender, min(salary) from employee_payroll where gender ='M'group by gender;
select gender, max(salary) from employee_payroll where gender ='F'group by gender;
select gender, max(salary) from employee_payroll where gender ='M'group by gender;
select gender, avg(salary) from employee_payroll where gender ='F'group by gender;
select gender, avg(salary) from employee_payroll where gender ='M'group by gender;
select gender, count(salary) from employee_payroll where gender ='F'group by gender;
select gender, count(salary) from employee_payroll where gender ='M'group by gender;
---- UC8 ----
alter table employee_payroll add phone_number varchar(30), 
add department varchar(30) not null;
alter table employee_payroll add address varchar (300)default 'abcd';
alter table employee_payroll drop address;
---- UC9 ----
alter table employee_payroll rename column salary to basic_pay;
alter table employee_payroll add deduction int,
add taxable_pay int,
add income_tax int,
add net_pay int;
---- UC10 ----
insert into employee_payroll (name,basic_pay,startDate,department)
values('Terrisa',5000000.0,'2021-01-10','sales');
insert into employee_payroll (name,basic_pay,startDate,gender,phone_number,department
,deduction,taxable_pay,income_tax,net_pay)
values('Terrisa',5000000.0,'2021-01-10','F',45225665,'marketing',
2000,350,5300,6000000.0);
---- UC11 ----
create table Employee(
id int not null auto_increment,
name varchar(50) not null,
gender varchar(30),
phone varchar (30),
address varchar (300),
startDate date not null,
primary key(id)
);
select * from employee;
create table payroll(id int not null auto_increment primary key,
basic_pay int,
deductions int,
income_tax int,
taxable_pay int,
net_pay int,
emp_id int,
foreign key (emp_id) references employee(id));
create table department(id int not null auto_increment primary key,
dept_name varchar(20) not null);
create table employee_department(
employee_id int not null,
department_id int not null,
foreign key(employee_id) references employee(id),
foreign key(department_id) references department(id),
primary key(employee_id,department_id));
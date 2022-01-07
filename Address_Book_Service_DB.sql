show databases;

---- UC1 ----
create database Address_Book_Service_DB;
use Address_Book_Service_DB;
select database();

---- UC2 ----
create table Address_Book(fName varchar(20), lName varchar(20), address varchar(20), city varchar (20), state varchar (20), zip varchar (10), phoneNumber varchar(15),email varchar(25));
describe tables;
drop table Address_Book;

---- UC3 ----
insert into Address_Book(fName,lName,address,city,state,zip,phoneNumber,email) values('Neeta','Mourya','Dayalband','Bsp','CG',495001,9875235232,'neeta@gmail.com');
insert into Address_Book(fName,lName,address,city,state,zip,phoneNumber,email) values('Prakash','kashyap','Dayalband','Bsp','CG',495001,9875235232,'prakash@gmail.com');
select * from Address_Book;

---- UC4 ----
UPDATE Address_Book SET fName = 'Neetu', City= 'BSP' WHERE fName = 'Neeta';

---- UC5 ----
DELETE FROM Address_Book WHERE fName='Prakash';

---- UC6 ----
select fName from Address_Book where state='CG' and city='BSP';

---- UC7 ----
SELECT city, LENGTH(city) AS LengthOfName FROM Address_Book;
SELECT state, LENGTH(state) AS LengthOfName FROM Address_Book;

---- UC8 ----
SELECT fName from Address_Book ORDER BY city ASC;

---- UC9 ----
alter table Address_Book add type varchar(10) after email;

---- UC10 ----
select phoneNumber from Address_Book where type='family';

---- UC11 ----
insert into Address_Book(fName,lName,address,city,state,zip,phoneNumber,email,type) values('harshita','banoudha','maihar','maihar','mp',4425512,9851512192,'harshita@gmail.com','friend');
insert into Address_Book(fName,lName,address,city,state,zip,phoneNumber,email,type) values('aman','mourya','ceepath','Bsp','CG',495001,9875235232,'aman@gmail.com','family');

---- UC12 ---- ER Diagram draw

---- UC13 ----
create table Address_Book_System(fName varchar(20) primary key, lName varchar(20), address varchar(20), city varchar (20), state varchar (20), zip varchar (10), phoneNumber varchar(15),email varchar(25));
select fName from Address_Book_System where state='CG' and city='BSP';
SELECT city, LENGTH(city) AS LengthOfName FROM Address_Book_System;
SELECT state, LENGTH(state) AS LengthOfName FROM Address_Book_System;
SELECT fName from Address_Book_System ORDER BY city ASC;
alter table Address_Book_Syatem add type varchar(10) after email;
select phoneNumber from Address_Book_Syatem where type='family';
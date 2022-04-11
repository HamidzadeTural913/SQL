CREATE DATABASE Company

DROP DATABASE Company
USE Company

CREATE TABLE Employeers(
	Id int,
	[Name] nvarchar(20),
	Surname nvarchar(30),
	WorkName nvarchar(20),
	WorkNo varchar(10),
	Salary money
)
drop table Employeers


CREATE TABLE OldEmployee(
	[Name] nvarchar(10)
)
DROP TABLE OldEmployee
	
ALTER TABLE Employeers
DROP COLUMN [Name]

exec sp_rename 'Employeers.WorkName','Job'

CREATE TABLE AssitantWorkers(
	Id int,
	[Name] nvarchar(23),
	Surname nvarchar(30),
	WorkName nvarchar(20),
	WorkNo varchar(10),
	Salary money
)
DROP TABLE AssitantWorkers

insert into Employeers
values(1,'Amilov','Programmer','AP204',4100)

insert into AssitantWorkers
values(1,'Tural','Hamidzade','Programmer','AP204',3500.5)
insert into AssitantWorkers
values(2,'Turqut','Hamidzade','ProgrammerAssistant','AP204',1600.2)
insert into AssitantWorkers
values(3,'Elis','Memmedov','Cilinger','AP204',1800.1)
insert into AssitantWorkers
values(4,'Ilham','Xanbalayev','Mudur','AP204',3300)
insert into AssitantWorkers
values(5,'Hadi','Bayramli','Mudur Komekcisi','AP204',2900)

select * from Employeers
select * from AssitantWorkers

select [Name] as Ad,Surname as Soyad from AssitantWorkers where Salary>2000

select [Name] as Ad,Surname as Soyad from AssitantWorkers where Salary>1000 and Salary<2000
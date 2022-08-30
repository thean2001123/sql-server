create database EmployeeDB

create table Department(
DepartId int primary key,
DepartName varchar(50) not null,
Description varchar(100) not null
);

create table Employee(
EmpCode char(6) primary key,
FirstName varchar(30) not null,
LastName varchar(30) not null,
Birthday smalldatetime not null,
Gender Bit default 1,
Address varchar(100),
DepartId int foreign key references Department(DepartID),
Salary Decimal(16,0)
);

drop table Employee;


insert into Department(DepartId,DepartName,Description) 
values ('100','marketing department', 'specializes in marketing for the company');
insert into Department(DepartId,DepartName,Description) 
values ('200','HR administrator department', 'human resource management');
insert into Department(DepartId,DepartName,Description) 
values ('300','student affairs office', 'student management');

select * from Employee;

insert into Employee(EmpCode,FirstName ,LastName,Birthday,Gender,Address,DepartId ,Salary)
values ('AD1','Thanh','Nguyen','1999/12/01',1,'Xuan Thuy',100,3000);
insert into Employee(EmpCode,FirstName ,LastName,Birthday,Gender,Address,DepartId ,Salary)
values ('AD3','Nam','Nguyen','1999/10/01',1,'Thanh Xuan',200,4000);
insert into Employee(EmpCode,FirstName ,LastName,Birthday,Gender,Address,DepartId ,Salary)
values ('AD3','Xuan','Nguyen','1999/09/01',0,'Dong Da',300,2000);
insert into Employee(EmpCode,FirstName ,LastName,Birthday,Gender,Address,DepartId ,Salary)
values ('AD3','Lan','Nguyen','1999/08/01',0,'Hoan Kiem',300,2000);
--2 Increase the salary for all employees by 10%
update Emplyee
set Salary = Salary+(Salary*10/100);
--3 Using ALTER TABLE statement to add constraint on Employee table to ensure that salary always greater than 0
alter table Salary
add constraint B_Salary check(Salary>0)
--5 Create an unique, none-clustered index named IX_DepartmentName on Departame column on Department table
create index IX_DepartmentName on Department(DepartName);
--6 Create a view to display employee’s code, full name and department name of all employees

create view information as 
select EmpCode,FirstName,LastName,DepartId
from Employee

--7 Create a stored procedure named sp_getAllEmp that accepts Department ID as given input parameter and displays all employees in that Department

--8 Create a stored procedure named sp_delDept that accepts employee Id as given input parameter to delete an employee
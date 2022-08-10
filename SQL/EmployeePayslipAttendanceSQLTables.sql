create table admin(
admin_Id int primary key,
admin_Name varchar(60)not null,
admin_Password varchar(40)not null);

insert into admin values(1,'Tamilarasan','Tamil@888');

select * from admin;

desc admin;


--------------------------------------------------------------------------------

create table employee_Details(
emp_Id int primary key,
emp_Firstname varchar(60)not null,
emp_Lastname varchar(60)not null,
emp_Gender varchar(15)not null,
emp_DOB Date not null,
emp_Email varchar(60)not null unique ,
emp_Password varchar(60) not null,
emp_Phoneno number not null unique,
emp_Address varchar(120)not null,
emp_Jobid int not null unique,
emp_Role varchar(40)constraint fk_emp_role references basic_Salary(emp_Role)not null,
emp_Manager varchar(60)not null,
emp_Hiredate Date not null,
emp_Workinghours int not null);
alter table employee_details add emp_basicsalary number(20) not null;

alter table employee_details modify emp_role varchar(40) constraint fk_emp_role references basic_Salary(emp_Role);         

select * from employee_details;

commit;

desc employee_Details;


--------------------------------------------------------------------------------

create table payslip(
payslip_Id int primary key,
payslip_Date Date not null,
gross_Salary float not null,
emp_id int constraint fk_emp REFERENCES employee_details(emp_id),
net_Salary float not null
);

select * from payslip;

desc payslip;


--------------------------------------------------------------------------------
create table attendance(
attendance_Id int primary key,
attend_Date date not null,
in_Time	timestamp not null,
out_Time timestamp not null,
daily_Task varchar(50) not null,
emp_Id constraint fk_emp1 REFERENCES employee_details(emp_id)
);

select * from attendance; 

desc attendance;


--------------------------------------------------------------------------------

create table basic_Salary(
emp_Role varchar(75) primary key,
emp_Basicsalary float not null,
HRA float not null,
PF float not null,
DA float not null,
income_Tax float not null);

insert into basic_salary values('Divisional Manager',90000,15000,5000,3000,15);
insert into basic_salary values('Senior Manager',70000,12000,4000,2800,12);
insert into basic_salary values('Manager',50000,10000,3500,2200,10);
insert into basic_salary values('Assistant Manager',35000,8000,3000,2000,8);
insert into basic_salary values('Cashier',25000,6000,2000,1500,6);
insert into basic_salary values('Clerk',20000,5000,1500,1200,5);

SELECT * FROM basic_Salary;


--------------------------------------------------------------------------------

use master;
go
drop database if exists Capstone
go
create database Capstone
go
use Capstone;
Create Table Users ( 
	Id int primary key not null identity(1,1),
	Username nvarchar(30) not null unique,
	Password nvarchar(30) not null,
	Firstname nvarchar(30) not null,
	Lastname nvarchar (30) not null,
	Phone nvarchar(12),
	email nvarchar(100),
	IsReviewer bit not null default 0,
	IsAdmin bit not null default 0	
	);
Go
Insert into Users (Username, Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	values ('sa','sa', 'Dave','Smith','513-555-1212','abc@hotmail.com',1,1)
Insert into Users (Username, Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	values('va','va', 'Bill','Smith','513-555-1313','abc@aol.com')
Insert into Users (Username, Password,Firstname,Lastname,Phone,Email,IsReviewer,IsAdmin)
	values('ca','ca','Joe','Smith','513-555-1414','abc@gmail.com',1,0)


Create Table Vendors(
	Id int primary key not null identity(1,1),
	Code nvarchar(30) not null unique,
	Name nvarchar(30) not null,
	Address nvarchar(30) not null,
	City nvarchar(30) not null,
	State nvarchar(2) not null,
	Zip nvarchar(5) not null,
	Phone nvarchar(12),
	Email nvarchar(255)

);

go

Insert into Vendors(Code, Name, Address, City,State,Zip,Phone,Email)
	values ('KROG','Kroger','1234 US 42','Florence','KY','41011','859-341-1111','kroger@email.com')
Insert into Vendors(Code, Name, Address, City,State,Zip,Phone,Email)
	values ('TARG','Target','3456 Turfway rd','Florence','KY','41011','859-342-0000','target@email.com')
Insert into Vendors(Code, Name, Address, City,State,Zip,Phone,Email)
	values ('AMAZ','Amazon','3422 Aero Place','Erlanger','KY','41011','859-233-5333','amazon@email.com')


Create table Products(
	Id int primary key not null identity(1,1),
	PartNbr nvarchar(30) not null unique,
	Name nvarchar(30) not null,
	Price decimal(11,2) not null,
	Unit nvarchar(30), --price is per dozen vs price per egg
	PhotoPath nvarchar(255), 
	VendorId int foreign key references Vendors(Id) 
);
go
insert into products (partnbr, name, price, unit, vendorId) 
	values ('ALMOND MILK', 'Almond Milk', 3.99, '2', (select id from Vendors where Code='KROG'));
insert into products (partnbr, name, price, unit, vendorId)
	values('AREA RUG','Area Rug',49.99, '1', (select id from Vendors where code ='TARG'));
insert into products (partnbr,name,price,unit, vendorId)
	values('KINDLE','Kindle',79.99,'2',(select id from Vendors where code ='AMAZ'))
go
Create Table Requests(
	Id int primary key not null identity(1,1),
	Description nvarchar(80) not null,
	Justification nvarchar(80) not null,
	RejectionReason nvarchar(80), 
	DeliveryMode nvarchar(20) not null default 'Pickup',
	Status nvarchar(10) not null default 'NEW',
	Total Decimal(11,2) not null default 0,
	UserId int foreign key references Users(Id)
);
go



Create Table RequesLines (
	Id int primary key not null identity(1,1),
	ProductId int not null foreign key references Products(Id),
	RequestId int not null foreign key references Requests(Id),
	Quantity int not null default 1
);
go
--Insert for Requests
insert into Requests (Description, Justification,UserId)
	Values ('First Request 123','Work related',(select Id from Users(Id)

--Insert for Request Lines

select* from Users


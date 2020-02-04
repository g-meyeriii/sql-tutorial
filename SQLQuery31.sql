--create database Bootcamp;
--use Bootcamp

/*Create table Students(
	Id int not null primary key identity(1, 1),
	Firstname nvarchar(30) not null ,
	Lastname nvarchar(30) not null,
	Active bit not null default 1,
	Birthday DateTime not null,
	Loan decimal (8,2)
	);*/

-- into Students (Firstname,Lastname, Birthday)
	--values ('Joe','Smith', 2008-02-03)
--insert into Students (Firstname,Lastname, Birthday)
	--values('Jill','Smith', 2008-4-3)
--insert into Students (Firstname,Lastname,active, Birthday,loan)
	--values ('Billy','Bob',1,1947-2-14,10000)
--select*
--from students
--Create Table Technology(
	--Id int not null primary key identity(100,100),
	--Name nvarchar(50) not null,
	--PrimaryInstructor nvarchar(30) not null);
--Insert into Technology (name, PrimaryInstructor) values('.Net, 'Greg')

--Insert into Technology (name, PrimaryInstructor) values ('Java','Sean')

/*Create table Cohort (
	Id int not null primary key identity(1,1),
	Starts DateTime null,
	Capacity int not null default 0,
	Enrolled int not null  default 0,
	TechnologyId int foreign key references Technology(Id) 
);*/

Select id, concat (firstname, ' ', lastname) as ' Full Name', gpa, sat from student;
from student
where sat >= 1200
order by lastname asc;

Select * From Student
where gpa < 3.0
order by sat desc

select * from student;
select * from major;

Select student.id, concat (firstname, ' ', lastname) as 'Name', sat, gpa,
							isnull(Description, 'undecided') as 'Major', 
							isnull(minsat, '') as 'Min SAT Required'
		from student
		left join Major
				on major.id = studnet.MajorID

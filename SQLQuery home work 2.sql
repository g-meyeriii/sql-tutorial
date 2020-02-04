select i.Lastname, count(*) as 'Classes' --Query homework question #2
From Instructor i
	join class c
		on c.InstructorId =i.Id
	group by i.Lastname 
	order by classes asc
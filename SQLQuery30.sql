select *
from Assignment a
	join class c
		on c.id = a.ClassId
	join instructor i
		on i.id = c.InstructorId
where Assignment > min(assignment)
	


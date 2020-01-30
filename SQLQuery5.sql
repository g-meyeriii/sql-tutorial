select s.Id as 'student Id', concat(s.firstname, ' ', s.lastname) as 'Name',
		m.description as 'Major',	
		s.Id 'Course Number', concat(c.Subject, ' ' ,c.Section) as 'Class',
		concat(i.firstname, ' ', i.lastname) as 'Instructor' 
	from student s
	join StudentClassRel sc
		on s.Id = sc.StudentId
	join class c
		on sc.ClassId = c.Id 
	join Instructor i 
		on i.id = c.instructorId
	join major m
		on m.id = s.MajorId
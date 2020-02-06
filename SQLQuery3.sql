select concat (firstname, ' ', lastname) as 'Instructor', 
	YearsExperience,
	c.Id as 'Course Code', i.IsTenured,
	concat(subject, ' ', section) as 'Class'
	From Instructor i
	join Class c
		on i.id = c.instructorId
	where i.IsTenured =1
	order by i.Lastname



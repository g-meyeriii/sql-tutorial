select * --Query homework question #1
From major m
	join MajorClassRel mc
		on m.Id = mc.MajorId
	join Class c
		on c.Id = mc.ClassId
where MajorId = 2
		
	

Select *  --Query homework question #3
	From Major m
	where m.MinSAT <= (
select s.Sat   
from student s
	where s.Lastname ='Biggs'
	)
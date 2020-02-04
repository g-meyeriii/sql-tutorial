--Delete from orderlines
	--where id in 

delete from orderlines where id in (
	select id from orderlines
	where description ='Timex'
	)


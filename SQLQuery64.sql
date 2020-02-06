select *
	from requests r
	join requestLines rl
		on r.id = rl.requestid
select *
	
from customers c
	where id = 8 or id = 11 or id = 12;
-- below is a charindex example

	(select id from customers 
	where charindex('bank',name)> 0;



select * from customers	
	where id in (select id from customers --where clause syntax more efficient same as above
	where charindex('bank',name) > 0 or charindex('eagle',name) >0 
		or charindex('cardinal', name) >0);
--multiple charindex incorporated on a subquery, above
SELECT * FROM bmdb.credit;
select * from actor;

-- join 2 test

select firstName, lastName, gender, title, year, rating
	from actor a 
    join movie m 
		on a.id = m.id;
        
-- join 3 test
        
select firstName, lastName, gender, title, year
	from actor a 
    join credit c  
		on a.id = c.id
	join movie m  
		on m.id = c.id;
		
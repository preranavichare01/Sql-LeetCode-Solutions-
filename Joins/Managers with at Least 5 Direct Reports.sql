select m.name from employee m
join  employee e
on  m.id=e.managerId
group by m.id
having count(m.id)>=5 ;

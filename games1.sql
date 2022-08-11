select Year ,  Global_Sales from `games1`.`games`
where   Year > 2000 and Name like 'Pokemon%'  and Global_Sales > 15  order by Year;

select Year , `Genre` ,     avg(Global_Sales)   from `games1`.`games`
where Year = 2010 group by `Genre` order by `Genre` asc  limit 10 ;

select * from `games1`.`games` where Year in (2012 , 2015) and
Publisher in('Sega' , 'Activision') and
`Genre` = 'Sports'   order by Year;


select Platform ,     max(Global_Sales) , min(Global_Sales) , count(Publisher)  from `games1`.`games`
group by Platform order by Platform asc  limit 5 ;





  

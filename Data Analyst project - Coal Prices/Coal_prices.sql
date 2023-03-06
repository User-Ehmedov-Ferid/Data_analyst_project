select  Entity , avg(Prices)  from coal_price.coal
group by Entity;

select Entity ,  coal_year , Prices  from coal_price.coal
where Prices = (select  max(Prices)  from coal_price.coal) or Prices = (select  min(Prices)  from coal_price.coal) ;

select Entity , coal_year , Prices from coal_price.coal
where Prices < (select avg(Prices) from coal_price.coal );

select Entity , count(Entity) from coal_price.coal
group by Entity;




create database zomato_db;
use zomato_db;

select * from dataset;
drop table zomato;
rename table dataset to zomato;
select * from zomato;
select count(*)  as total_rows
from zomato;
Desc zomato;

select * 
from zomato
limit 10;

Select  RestaurantID,
count(*) as Duplicate_count
from zomato
group by restaurantID
having count(*) >1;

Select distinct city
from zomato;

select 
MIN(rating),
MAX(rating),
AVG(rating)
from zomato;

Select 
MIN(votes) as Minimum_votes,
MAX(votes) as Maximum_Votes,
AVG(votes) as AVG_Votes
from Zomato;

select
min(Average_Cost_for_two) as min_cost,
max(Average_Cost_for_two) as max_cost,
avg(Average_Cost_for_two) as avg_cost
from zomato;

Select count(*) as null_address 
from zomato
where address is null;

Select Cuisines,
count(*) as duplicate_cuisines
from zomato
group by cuisines
having count(*)>1;

Select Count(*) as total_restaurants
from zomato;

select count(distinct city) as total_cities
from zomato ;

select count(distinct Countrycode) as total_country
from zomato;

select round( avg (rating),2) as average_rating
from zomato;

select restaurantname,price_range
from zomato
order by price_range desc
LIMIT 10;

Select count(*) from country;
Select count(*) from currency;
Select count(*) from date_table;
Select count(*) from zomato;

Desc country;
Desc currency;
Desc date_table;

select z.restaurantname,z.city,c.countryname
from zomato as z
join country as c
on z.CountryCode=c.CountryID
limit 10;

select c.Countryname,
count(z.restaurantID) as total_restaurants
from zomato as z
join country as c
on z.Countrycode=c.Countryid
group by c.Countryname
order by total_restaurants desc;

select 
c.countryname,
round(avg(z.rating),2) as AVG_Rating
from zomato as z
join country as c
on z.countrycode=c.countryid
group by c.countryname
order by AVG_Rating desc;

select city, count(RestaurantID)as Total_restaurants
from zomato
group by city
order by total_restaurants desc
limit 5;


select 
city,
count(restaurantid) as total_Restaurant,
round(avg(rating),2)as avg_Rated
from zomato
group by city
having count(RestaurantID)>=20
order by avg_Rated desc
limit 5;

select restaurantname,
city,rating,votes
from zomato
where votes>=100
order by rating desc,votes desc
limit 5;

select city,restaurantname,rating,
case
when rating>=4.5 then'excellent'
when rating>=4 then 'good'
when rating>=3 then ' average'
else'poor'
end as rating_category
from zomato;

select 
rating,
restaurantname,
city
from zomato
where rating >
(
select avg(rating)
from zomato)
order by rating desc
;





















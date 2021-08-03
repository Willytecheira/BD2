Select count(Name) from world.country;
Select Continent, count(Continent) from world.country group by Continent;
Select Continent, count(Continent) from world.country group by Continent order by Continent ASC;
Select Continent, count(Continent) from world.country group by Continent having count(Continent) > 50;
Select max(SurfaceArea) from world.country;
Select min(SurfaceArea) from world.country;
Select AVG(all SurfaceArea) from world.country;
Select AVG(all SurfaceArea) from world.country group by Continent LIKE "Europe";
Select Continent, AVG(all SurfaceArea) from world.country group by Continent order by AVG(all SurfaceArea) DESC;
Select Continent, max(SurfaceArea) from world.country group by Continent order by max(SurfaceArea) DESC ;
select Continent, max(SurfaceArea) from world.country group by Continent;
select Continent, max(SurfaceArea) maior from world.country group by Continent order by maior DESC;
select Name, count(Language) as totalIdioma from world.country
left join world.countrylanguage
on country.Code = countrylanguage.CountryCode
group by Name;

select Name, count(Language) as totalIdioma from world.country
left join world.countrylanguage
on country.Code = countrylanguage.CountryCode
group by Name
having count(Language) > 10;

select country.Name, count(city.Name) from world.country
left join world.city
on country.Code = city.CountryCode
group by country.Name;

select country.Name, avg(city.Population) from world.country
left join world.city
on country.Code = city.CountryCode
group by country.Name;

select country.Name, avg(city.Population) as mediaPop from world.country
right join world.city
on country.Code = city.CountryCode
group by country.Name
order by mediaPop ASC;

select country.Name, avg(city.Population) as mediaPop from world.country
right join world.city
on country.Code = city.CountryCode
group by country.Name
having avg(city.Population) > 70000
order by mediaPop ASC;

select sum(amount) from sakila.payment;

select avg(amount) from sakila.payment;

select customer.customer_id, customer.first_name, customer.last_name, sum(amount)
from sakila.customer
inner join sakila.payment 
on customer.customer_id = payment.customer_id
group by customer.customer_id;

select customer.customer_id, customer.first_name, customer.last_name, sum(amount)
from sakila.customer
inner join sakila.payment 
on customer.customer_id = payment.customer_id
group by customer.customer_id
order by customer.first_name, customer.last_name ASC;

select customer.customer_id, customer.first_name, customer.last_name, sum(amount) as soma
from sakila.customer
inner join sakila.payment 
on customer.customer_id = payment.customer_id
group by customer.customer_id
having sum(amount) > 100
order by soma ASC;

select staff.staff_id, staff.first_name, staff.last_name, count(payment.staff_id)
from sakila.staff
inner join sakila.payment 
on staff.staff_id = payment.customer_id
group by staff.staff_id;

select staff.staff_id, staff.first_name, staff.last_name, count(payment.staff_id)
from sakila.staff
inner join sakila.payment 
on staff.staff_id = payment.customer_id
where payment_date between '2005-05-25' and '2005-08-23'
group by staff.staff_id;

select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.film_id)
from sakila.actor
inner join sakila.film_actor
on actor.actor_id = film_actor.actor_id
group by actor.actor_id;

select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.film_id) as total
from sakila.actor
inner join sakila.film_actor
on actor.actor_id = film_actor.actor_id
group by actor.actor_id
order by total asc;

select actor.actor_id, actor.first_name, actor.last_name, count(film_actor.film_id)
from sakila.actor
inner join sakila.film_actor
on actor.actor_id = film_actor.actor_id
where actor.actor_id = 100
group by actor.actor_id;

select category.name, count(film_category.film_id)
from sakila.category
left join sakila.film_category
on category.category_id = film_category.category_id
group by category.name;


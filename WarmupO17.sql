with popular as( select film_actor.actor_id, count(film_id) as appearances, film_id
from film_actor
join actor
using(actor_id)
group by  film_actor.actor_id
order by appearances desc),most_films as (
    select titles
    from film
    join popular
    using(film_id)
    where actor_id = 107 
)
 select *
 from most_films;
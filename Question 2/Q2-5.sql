--Joining tables

SELECT actor.first_name, actor.last_name, film.title
FROM public.actor
JOIN public.film_actor ON actor.actor_id = film_actor.actor_id
JOIN public.film ON film_actor.film_id = film.film_id;
-- BONUS

SELECT actor.first_name, actor.last_name, film.title
FROM public.actor
JOIN public.film_actor ON actor.actor_id = film_actor.actor_id
JOIN public.film ON film_actor.film_id = film.film_id
WHERE actor.actor_id < 21 AND film.film_id < 21
GROUP BY actor.first_name, actor.last_name, film.title
ORDER BY film.title ASC;

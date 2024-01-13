--2 Reduce rows using GROUP BY

SELECT first_name, COUNT(*)
FROM public.actor
GROUP BY first_name;
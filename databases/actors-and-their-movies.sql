-- Write a SQL Query to find the name of those movies where one or more actors acted in two or more movies.
--
-- Output Schema:
--
-- movie_title
-- NOTE:
--
-- Output column name has to match the given output schema.
-- Any name is the concatenation(without any delimiter) of first and last name if present
-- (E.g. if director_first_name is ‘Alfred’ and director_last_name is ‘Hitchcock’ then director_name is ‘AlfredHitchcock’)
-- Example Output:
--
-- movie_title
-- Vertigo

SELECT movie_title
FROM movies
INNER JOIN movies_cast AS mtc ON (movies.movie_id = mtc.movie_id)
WHERE mtc.actor_id IN (SELECT actor_id FROM movies_cast GROUP BY actor_id HAVING COUNT(movie_id) > 1);
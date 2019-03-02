-- Write a SQL Query to find those lowest duration movies along with the year, director’s name(first and last name combined), actor’s name(first and last name combined) and his/her role in that production.
--
-- Output Schema:
--
-- movie_title,movie_year,director_name,actor_name,role
-- NOTE:
--
-- Output column name has to match the given output schema.
-- Any name is the concatenation(without any delimiter) of first and last name if present
-- (E.g. if director_first_name is ‘Alfred’ and director_last_name is ‘Hitchcock’ then director_name is ‘AlfredHitchcock’)
-- Example Output:
--
-- movie_title,movie_year,director_name,actor_name,role
-- Vertigo,1958,AlfredHitchcock,JamesStewart,JohnFerguson

SELECT movies.movie_title, movies.movie_year, CONCAT(dir.director_first_name, dir.director_last_name) AS director_name,
CONCAT(ac.actor_first_name, ac.actor_last_name) AS actor_name, mtc.role
FROM movies 
INNER JOIN movies_directors AS mtd ON (movies.movie_id = mtd.movie_id)
INNER JOIN directors AS dir ON (mtd.director_id = dir.director_id)
INNER JOIN movies_cast AS mtc ON (movies.movie_id = mtc.movie_id)
INNER JOIN actors AS ac ON (mtc.actor_id = ac.actor_id)
ORDER BY movies.movie_time ASC;

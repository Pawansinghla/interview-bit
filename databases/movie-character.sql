-- Write a SQL Query to find the movie_title and name of director (first and last names combined) who directed a movie that casted a role as ‘SeanMaguire’.
--
-- Output Schema:
--
-- director_name,movie_title
-- NOTE:
--
-- Output column name has to match the given output schema.
-- Any name is the concatenation(without any delimiter) of first and last name if present
-- (E.g. if director_first_name is ‘Alfred’ and director_last_name is ‘Hitchcock’ then director_name is ‘AlfredHitchcock’)
-- Example Output:
--
-- director_name,movie_title
-- AlfredHitchcock,Vertigo

SELECT CONCAT(dir.director_first_name, dir.director_last_name) AS director_name, movie_title
FROM movies
INNER JOIN movies_directors AS mtd ON (movies.movie_id = mtd.movie_id)
INNER JOIN directors AS dir ON (mtd.director_id = dir.director_id)
INNER JOIN movies_cast AS mtc ON (movies.movie_id = mtc.movie_id AND mtc.role = 'SeanMaguire');
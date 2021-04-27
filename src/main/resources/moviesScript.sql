SELECT *
FROM movies
WHERE genre = 'Sci-Fi';

SELECT *
FROM movies
WHERE imdb_score >= 6.5;

SELECT *
FROM movies
WHERE rating LIKE '%G' AND runtime < 100;

SELECT genre, AVG(runtime)
FROM movies WHERE imdb_score < 7.5
GROUP BY genre;

UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers';
-- To check the change
SELECT * FROM MOVIES;

SELECT id, rating
FROM movies
WHERE genre = 'Horror' OR genre = 'Documentary';

SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating;

SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;

DELETE
FROM movies
WHERE rating = 'R';
-- To check the change
SELECT * FROM MOVIES;
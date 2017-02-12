-- load 

DROP TABLE IF EXISTS friends;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS movies_ratings_friends;

CREATE TABLE friends (
  id integer PRIMARY KEY,
  name varchar(30) NOT NULL
  );
  
-- LOAD DATA LOCAL INFILE 'C:/Users/kyleg/D607-Data-Acquisition/data-sets/movie_ratings/friends.csv' 
-- INTO TABLE friends 
-- FIELDS TERMINATED BY ',' 
-- #ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- select * from friends;

CREATE TABLE movies (
  id integer primary key,
  movie varchar(100)
  );
  
-- LOAD DATA LOCAL INFILE 'C:/Users/kyleg/D607-Data-Acquisition/data-sets/movie_ratings/movies.csv' 
-- INTO TABLE movies 
-- FIELDS TERMINATED BY ',' 
-- #ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- select * from movies;

CREATE TABLE ratings (
	id integer primary key,
	rating varchar(50),
	rating_score integer
	);

-- LOAD DATA LOCAL INFILE 'C:/Users/kyleg/D607-Data-Acquisition/data-sets/movie_ratings/ratings.csv' 
-- INTO TABLE ratings
-- FIELDS TERMINATED BY ',' 
-- #ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- select * from ratings;

CREATE TABLE movies_ratings_friends (
	id integer,
	movie_id integer,
	friend_id integer,
	rating_id integer
	);

-- LOAD DATA LOCAL INFILE 'C:/Users/kyleg/D607-Data-Acquisition/data-sets/movie_ratings/movies_ratings_friends.csv' 
-- INTO TABLE movies_ratings_friends
-- FIELDS TERMINATED BY ',' 
-- #ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;

-- select * from movies_ratings_friends;

SELECT 'friends', COUNT(*) FROM friends
  UNION
SELECT 'movies', COUNT(*) FROM movies
  UNION
SELECT 'ratings', COUNT(*) FROM ratings
  UNION
SELECT 'movies ratings friends', COUNT(*) FROM movies_ratings_friends;

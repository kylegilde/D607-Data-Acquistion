DROP TABLE IF EXISTS friends;
    DROP TABLE IF EXISTS movies;
    DROP TABLE IF EXISTS ratings;
    DROP TABLE IF EXISTS movies_ratings_friends;
    
    CREATE TABLE friends (
      id integer PRIMARY KEY,
      name varchar(30) NOT NULL
      );
    
    CREATE TABLE movies (
      id integer primary key,
      movie varchar(100)
      );
    
    CREATE TABLE ratings (
    	id integer primary key,
    	rating varchar(50),
    	rating_score integer
    	);
    
    CREATE TABLE movies_ratings_friends (
    	id integer,
    	movie_id integer,
    	friend_id integer,
    	rating_id integer
    	);
    
    SELECT 'friends', COUNT(*) FROM friends
      UNION
    SELECT 'movies', COUNT(*) FROM movies
      UNION
    SELECT 'ratings', COUNT(*) FROM ratings
      UNION
    SELECT 'movies ratings friends', COUNT(*) FROM movies_ratings_friends;
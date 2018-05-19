USE `gc200333254`;

DROP TABLE IF EXISTS movies;

CREATE TABLE movies
(
	id				INT(11)			NOT NULL AUTO_INCREMENT,
    movie_name		VARCHAR(100)	NOT NULL,
    genre			VARCHAR(100)	NOT NULL,
    category		VARCHAR(20)		NOT NULL,
    release_date	VARCHAR(20)		NOT NULL,
	length 			TIME			DEFAULT NULL,
    review			VARCHAR(500)	NOT NULL,
	actor_id		INT(11)			NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (actor_id) REFERENCES actors (id) ON DELETE CASCADE ON UPDATE CASCADE
);

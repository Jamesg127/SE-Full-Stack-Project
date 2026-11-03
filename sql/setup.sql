DROP TABLE IF EXISTS session;
DROP TABLE IF EXISTS match;
DROP TABLE IF EXISTS crossbar_hit;

CREATE TABLE session (
session_id INT PRIMARY KEY,
session_name VARCHAR(50)
);

CREATE TABLE match (
match_id int PRIMARY KEY,
session_id INT FOREIGN KEY
);

CREATE TABLE player_stats (
match_id INT FOREIGN KEY,
score INT NOT NULL,
goals INT NOT NULL,
assists INT NOT NULL,
saves INT NOT NULL,
shots INT NOT NULL,
demos INT NOT NULL,
touches INT NOT NULL,
bumps INT NOT NULL,
boost INT NOT NULL,
speed INT NOT NULL,

arena VARCHAR(50),
elapsed DECIMAL(10, 1)
);

--Event
CREATE TABLE crossbar_hit (
hit_id INT PRIMARY KEY,
session_id INT FOREIGN KEY,
match_id INT FOREIGN KEY,
ball_speed INT NOT NULL,
impact_force INT NOT NULL
);

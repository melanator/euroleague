CREATE TABLE members (
	id integer PRIMARY KEY AUTOINCREMENT,
	name string,
	is_active boolean
);

CREATE TABLE matches (
	id integer PRIMARY KEY AUTOINCREMENT,
	league_id integer,
	home_id integer,
	away_id integer,
	home_goals integer,
	away_goals integer,
	time time,
	matchday integer
);

CREATE TABLE leagues (
	id integer PRIMARY KEY AUTOINCREMENT,
	name string PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE countries (
	id integer PRIMARY KEY AUTOINCREMENT,
	name string
);

CREATE TABLE teams (
	id binary PRIMARY KEY AUTOINCREMENT,
	name string,
	country_id integer
);

CREATE TABLE bets (
	id binary PRIMARY KEY AUTOINCREMENT,
	name binary,
	match integer,
	home_goals integer,
	away_goals integer,
	points integer
);

CREATE TABLE bombs (
	id integer PRIMARY KEY AUTOINCREMENT,
	name string PRIMARY KEY AUTOINCREMENT,
	team integer
);

CREATE TABLE bet_bombs (
	id binary PRIMARY KEY AUTOINCREMENT,
	name integer PRIMARY KEY AUTOINCREMENT,
	bomb integer PRIMARY KEY AUTOINCREMENT,
	matchday integer PRIMARY KEY AUTOINCREMENT,
	points integer
);

CREATE TABLE matchdays (
	id integer PRIMARY KEY AUTOINCREMENT,
	season integer,
	number integer
);











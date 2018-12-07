CREATE TABLE recipe(
	id SERIAL,
	title VARCHAR(256),
	url VARCHAR(256),
	image_url VARCHAR(256),
	ingredients VARCHAR(1024),

	PRIMARY KEY(id)
);
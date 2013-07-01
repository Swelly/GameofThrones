CREATE TABLE houses
(
id serial primary key,
name varchar(255),
sigil varchar(255),
motto varchar(255)
);

CREATE TABLE gotpeople
(
id serial primary key,
name VARCHAR(255),
weapon VARCHAR(233),
age INT,
image TEXT,
house_id INT REFERENCES houses(id)
);

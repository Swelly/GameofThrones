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

-- add three houses ---
INSERT INTO houses (name, sigil, motto) VALUES ('Stark', 'file://localhost/Users/Wes/code/GoT/Sigils/Stark.jpg', 'Winter is Coming');

INSERT INTO houses (name, sigil, motto) VALUES ('Lannister', 'file://localhost/Users/Wes/code/GoT/Sigils/Lannister.jpg', 'Hear Me Roar!');

INSERT INTO houses (name, sigil, motto) VALUES ('Baratheon', 'file://localhost/Users/Wes/code/GoT/Sigils/Baratheon.jpg', 'Ours is the Fury');

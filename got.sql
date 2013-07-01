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

--- add persons to table ---
INSERT INTO gotpeople (name, weapon, age, image, house_id) VALUES ('Bran', 'Worg', 8, 'http://static.tvfanatic.com/images/gallery/bran-stark-photo.jpg', 1);
INSERT INTO gotpeople (name, weapon, age, image, house_id) VALUES ('Jon', 'Longclaw', 19, 'http://images3.wikia.nocookie.net/__cb20130325182730/gameofthrones/images/8/8b/Jon-Snow-S3.jpg', 1);
INSERT INTO gotpeople (name, weapon, age, image, house_id) VALUES ('Jamie', 'House', 29, 'http://images6.fanpop.com/image/photos/33800000/Jaime-Lannister-jaime-lannister-33803609-500-619.jpg', 2);


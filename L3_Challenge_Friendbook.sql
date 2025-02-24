/* Create a database for a friend networking site, with a table storing data on each person, a table on each person's hobbies, 
and a table of friend connections between the people. */

CREATE TABLE persons (
    id INTEGER PRIMARY KEY,
    fullname TEXT,
    age INTEGER);
    
INSERT INTO persons (id, fullname, age) VALUES (1, "Bobby McBobbyFace", "12");
INSERT INTO persons (id, fullname, age) VALUES (2, "Lucy BoBucie", "25");
INSERT INTO persons (id, fullname, age) VALUES (3, "Banana FoFanna", "14");
INSERT INTO persons (id, fullname, age) VALUES (4, "Shish Kabob", "20");
INSERT INTO persons (id, fullname, age) VALUES (5, "Fluffy Sparkles", "8");

CREATE table hobbies (
    id INTEGER PRIMARY KEY,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (id, person_id, name) VALUES (1, 1, "drawing");
INSERT INTO hobbies (id, person_id, name) VALUES (2, 1, "coding");
INSERT INTO hobbies (id, person_id, name) VALUES (3, 2, "dancing");
INSERT INTO hobbies (id, person_id, name) VALUES (4, 2, "coding");
INSERT INTO hobbies (id, person_id, name) VALUES (5, 3, "skating");
INSERT INTO hobbies (id, person_id, name) VALUES (6, 3, "rowing");
INSERT INTO hobbies (id, person_id, name) VALUES (7, 3, "drawing");
INSERT INTO hobbies (id, person_id, name) VALUES (8, 4, "coding");
INSERT INTO hobbies (id, person_id, name) VALUES (9, 4, "dilly-dallying");
INSERT INTO hobbies (id, person_id, name) VALUES (10, 4, "meowing");

CREATE table friends (id INTEGER PRIMARY KEY,
    person1_id INTEGER,
    person2_id INTEGER);
    
INSERT INTO friends (id, person1_id, person2_id)
    VALUES (1, 1, 4);
INSERT INTO friends (id, person1_id, person2_id)
    VALUES (2, 2, 3);
    
/* Display a table showing people's names with their hobbies. */

SELECT persons.fullname, hobbies.name
FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;

/*  Show the names of each pair of friends, based on the data in the friends table. */

SELECT a.fullname, b.fullname
FROM friends
JOIN persons a
ON a.id = friends.person1_id
JOIN persons b
ON b.id = friends.person2_id;






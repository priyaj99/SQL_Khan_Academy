/*We've created a database of people and hobbies, and each row in hobbies is related to a row in persons 
via the person_id column. Insert one more row in persons and then one more row in hobbies that is 
related to the newly inserted person.*/

CREATE TABLE persons (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER);
    
INSERT INTO persons (id, name, age) VALUES (1, "Bobby McBobbyFace", 12);
INSERT INTO persons (id, name, age) VALUES (2, "Lucy BoBucie", 25);
INSERT INTO persons (id, name, age) VALUES (3, "Banana FoFanna", 14);
INSERT INTO persons (id, name, age) VALUES (4, "Shish Kabob", 20);
INSERT INTO persons (id, name, age) VALUES (5, "Fluffy Sparkles", 8);
INSERT INTO persons (id, name, age) VALUES (6, "Lana Rey", 24);

CREATE table hobbies (
    id INTEGER PRIMARY KEY,
    person_id INTEGER,
    name TEXT);
    
INSERT INTO hobbies (id, person_id, name) values (1, 1, "drawing");
INSERT INTO hobbies (id, person_id, name) VALUES (2, 1, "coding");
INSERT INTO hobbies (id, person_id, name) VALUES (3, 2, "dancing");
INSERT INTO hobbies (id, person_id, name) VALUES (4, 2, "coding");
INSERT INTO hobbies (id, person_id, name) VALUES (5, 3, "skating");
INSERT INTO hobbies (id, person_id, name) VALUES (6, 3, "rowing");
INSERT INTO hobbies (id, person_id, name) VALUES (7, 3, "drawing");
INSERT INTO hobbies (id, person_id, name) VALUES (8, 4, "coding");
INSERT INTO hobbies (id, person_id, name) VALUES (9, 4, "dilly-dallying");
INSERT INTO hobbies (id, person_id, name) VALUES (10, 4, "meowing");
INSERT INTO hobbies (id, person_id, name) VALUES (11, 6, "singing");

/*Select the 2 tables with a join so that you can see each person's name next to their hobby.*/

SELECT persons.name, hobbies.name FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id;

/*Show only the name and hobbies of 'Bobby McBobbyFace'.*/

SELECT persons.name, hobbies.name FROM persons
JOIN hobbies
ON persons.id = hobbies.person_id
where persons.name = "Bobby McBobbyFace";






    
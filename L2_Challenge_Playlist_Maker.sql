/* We've created a database of songs and artists, and make playlists from them in this challenge. 
In this first step, select the title of all the songs by the artist named 'Queen'. */

CREATE TABLE artists (
    id INTEGER PRIMARY KEY,
    name TEXT,
    country TEXT,
    genre TEXT);
    
INSERT INTO artists (id, name, country, genre)
    VALUES (1, "Taylor Swift", "US", "Pop");
INSERT INTO artists (id, name, country, genre)
    VALUES (2, "Led Zeppelin", "US", "Hard rock");
INSERT INTO artists (id, name, country, genre)
    VALUES (3, "ABBA", "Sweden", "Disco");
INSERT INTO artists (id, name, country, genre)
    VALUES (4, "Queen", "UK", "Rock");
INSERT INTO artists (id, name, country, genre)
    VALUES (5, "Celine Dion", "Canada", "Pop");
INSERT INTO artists (id, name, country, genre)
    VALUES (6, "Meatloaf", "US", "Hard rock");
INSERT INTO artists (id, name, country, genre)
    VALUES (7, "Garth Brooks", "US", "Country");
INSERT INTO artists (id, name, country, genre)
    VALUES (8, "Shania Twain", "Canada", "Country");
INSERT INTO artists (id, name, country, genre)
    VALUES (9, "Rihanna", "US", "Pop");
INSERT INTO artists (id, name, country, genre)
    VALUES (10, "Guns N' Roses", "US", "Hard rock");
INSERT INTO artists (id, name, country, genre)
    VALUES (11, "Gloria Estefan", "US", "Pop");
INSERT INTO artists (id, name, country, genre)
    VALUES (12, "Bob Marley", "Jamaica", "Reggae");
    
CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    artist TEXT,
    title TEXT);
    
INSERT INTO songs (id, artist, title)
    VALUES (1, "Taylor Swift", "Shake it off");
INSERT INTO songs (id, artist, title)
    VALUES (2, "Rihanna", "Stay");
INSERT INTO songs (id, artist, title)
    VALUES (3, "Celine Dion", "My heart will go on");
INSERT INTO songs (id, artist, title)
    VALUES (4, "Celine Dion", "A new day has come");
INSERT INTO songs (id, artist, title)
    VALUES (5, "Shania Twain", "Party for two");
INSERT INTO songs (id, artist, title)
    VALUES (6, "Gloria Estefan", "Conga");
INSERT INTO songs (id, artist, title)
    VALUES (7, "Led Zeppelin", "Stairway to heaven");
INSERT INTO songs (id, artist, title)
    VALUES (8, "ABBA", "Mamma mia");
INSERT INTO songs (id, artist, title)
    VALUES (9, "Queen", "Bicycle Race");
INSERT INTO songs (id, artist, title)
    VALUES (10, "Queen", "Bohemian Rhapsody");
INSERT INTO songs (id, artist, title)
    VALUES (11, "Guns N' Roses", "Don't cry");
    
SELECT title FROM songs
where artist = "Queen";

/*  Make a pop playlist with the name of all of the artists from the 'Pop' genre */

SELECT name FROM artists
where genre = "Pop";

/* To finish creating the 'Pop' playlist, add another query that will select the title of all the songs from the 'Pop' artists.
It should use IN on a nested subquery that's based on your previous query. */

SELECT title FROM songs 
WHERE artist IN (SELECT name FROM artists
where genre = "Pop");
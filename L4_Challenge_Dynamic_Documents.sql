/* We've created a database for a documents app, with rows for each document with it's title, content, and author. */

CREATE table documents (
    id INTEGER PRIMARY KEY,
    title TEXT,
    content TEXT,
    author TEXT);
    
INSERT INTO documents (id, author, title, content)
    VALUES (1, "Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (id, author, title, content)
    VALUES (2, "Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (id, author, title, content)
    VALUES (3, "Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (id, author, title, content)
    VALUES (4, "Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (id, author, title, content)
    VALUES (5, "Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");
    
SELECT * FROM documents;

/*  In this first step, use UPDATE to change the author to 'Jackie Draper' for all rows where it's currently 'Jackie Paper'. 
Then re-select all the rows to make sure the table changed like you expected. */

Update documents set author = "Jackie Draper" 
where id= 3 and id= 4 and id= 5 ;

select * from documents;

/* Now only delete the row where the title is 'Things I'm Afraid Of'. 
Then re-select all the rows to make sure the table changed like you expected. */

Delete from documents 
where title = "Things I'm Afraid Of" and id= 5;

select * from documents;




    

/* We've created a database of clothes, and decided we need a price column. */

CREATE TABLE clothes (
    id INTEGER PRIMARY KEY,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (id, type, design)
    VALUES (1, "dress", "pink polka dots");
INSERT INTO clothes (id, type, design)
    VALUES (2, "pants", "rainbow tie-dye");
INSERT INTO clothes (id, type, design)
    VALUES (3, "blazer", "black sequin");
    
/* Use ALTER to add a 'price' column to the table. Then select all the columns in each row to see what your table looks like now. */

Alter table clothes add price Integer;

Select * from clothes;

/* Now assign each item a price, using UPDATE - item 1 should be 10 dollars, item 2 should be 20 dollars, item 3 should be 30 dollars. 
When you're done, do another SELECT of all the rows to check that it worked as expected. */

Update clothes set price= 10
where id=1;

update clothes set price= 20
where id=2;

update clothes set price= 30
where id=3;

select *from clothes;

/* Now insert a new item into the table that has all three attributes filled in, including 'price'. 
Do one final SELECT of all the rows to check it worked. */

insert into clothes (id, type, design, price) values (4, "jeans", "ripped", 40);

select * from clothes;

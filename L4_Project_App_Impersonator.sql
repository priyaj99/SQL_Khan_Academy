/* Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. 
Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), 
and write SQL statements that might look like their own SQL. */

/*CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app. */

create table healthifyme (id integer primary key, name text, age integer, weight integer, height_feet integer, height_inches integer, 
calorie_intake integer);

insert into healthifyme(id, name, age, weight, height_feet, height_inches, calorie_intake) values (1, "Vaishnavi", 27, 70, 5, 2, 1200);
insert into healthifyme(id, name, age, weight, height_feet, height_inches, calorie_intake) values (2, "Anubhuti", 26, 72, 5, 8, 1000);
insert into healthifyme(id, name, age, weight, height_feet, height_inches, calorie_intake) values (3, "Priya", 25, 71, 5, 6, 1100);

select * from healthifyme;

update healthifyme set weight = 68 
where id= 3;

select * from healthifyme;

alter table healthifyme add calorie_burnt integer;

select * from healthifyme;

update healthifyme set calorie_burnt = 450
where id= 1;

update healthifyme set calorie_burnt = 550
where id= 2;

update healthifyme set calorie_burnt = 375
where id= 3;

select * from healthifyme;

drop table healthifyme;



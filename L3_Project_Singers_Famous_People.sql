/* In this project, you’re going to make your own table with some small set of “famous people”, 
then make more tables about things they do and join those to create nice human readable lists. */

Create table singers (id INTEGER PRIMARY KEY, fullname TEXT, age INTEGER);

insert into singers (id, fullname, age) values (1, "Sunidhi Chauhan", 41);
insert into singers (id, fullname, age) values (2, "Arjit Singh", 37);
insert into singers (id, fullname, age) values (3, "Neeti Mohan", 45);
insert into singers (id, fullname, age) values (4, "Udit Narayan", 69);
insert into singers (id, fullname, age) values (5, "Atif Aslam", 41);

create table songs (id integer primary key, person_id integer, name text, duration integer);

insert into songs (id, person_id, name, duration) values (1, 1, "Aankh", 3.09);
insert into songs (id, person_id, name, duration) values (2, 1, "Aaja Nachle", 5.05);
insert into songs (id, person_id, name, duration) values (3, 2, "Zaalima", 4.59);
insert into songs (id, person_id, name, duration) values (4, 4, "Main Yahoon Hoon", 4.55);
insert into songs (id, person_id, name, duration) values (5, 5, "Tera Hone Laga Hu", 4.59);

/* What songs are sung by the singers mentioned in the first table? */

select singers.fullname, songs.name, singers.age from singers
left outer join songs
on singers.id = songs.person_id
where singers.age < 50
group by singers.fullname, songs.name, singers.age
order by singers.age;



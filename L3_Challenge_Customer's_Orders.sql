CREATE TABLE customers (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT);
    
INSERT INTO customers (id, name, email) VALUES (1, "Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (id, name, email) VALUES (2, "Harry Potter", "harry@potter.com");
INSERT INTO customers (id, name, email) VALUES (3, "Captain Awesome", "captain@awesome.com");

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    item TEXT,
    price REAL);

INSERT INTO orders (id, customer_id, item, price)
    VALUES (1, 1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (id, customer_id, item, price)
    VALUES (2, 2, "High Quality Broomstick", 40.00);
INSERT INTO orders (id, customer_id, item, price)
    VALUES (3, 1, "TARDIS", 1000000.00);
    
/* lists the name and email of every customer followed by the item and price of orders they've made.*/
    
SELECT customers.name, customers.email, orders.item, orders.price FROM customers
LEFT OUTER JOIN orders
ON customers.id = orders.customer_id;

/* one row per each customer, with their name, 
 email, and total amount of money they've spent on orders. Sort the rows according to 
 the total money spent, from the most spent to the least spent.*/

SELECT customers.name, customers.email, SUM(orders.price) AS "total"
FROM customers
LEFT OUTER JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.name, customers.email
ORDER BY "total" DESC;
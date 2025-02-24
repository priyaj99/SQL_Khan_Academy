/* Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. 
You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. 
You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items. */

CREATE TABLE clothing (id INTEGER PRIMARY KEY, name TEXT, price INTEGER, quantity INTEGER, size TEXT);

INSERT INTO clothing VALUES (1, "Blouse", 970.00, 25, "L");
INSERT INTO clothing VALUES (2, "Skirt", 570.00, 30, "L");
INSERT INTO clothing VALUES (3, "Shorts", 950.00, 30, "L");
INSERT INTO clothing VALUES (4, "Pants", 850.00, 40, "L");
INSERT INTO clothing VALUES (5, "Jeans", 600.00, 30, "M");
INSERT INTO clothing VALUES (6, "Leggings", 700.00, 35, "L");
INSERT INTO clothing VALUES (7, "Socks", 770.00, 25, "L");
INSERT INTO clothing VALUES (8, "Hoodie", 850.00, 40, "XL");
INSERT INTO clothing VALUES (9, "Sweatshirts", 800.00, 30, "XL");
INSERT INTO clothing VALUES (10, "Track Pants", 450.00, 70, "L");
INSERT INTO clothing VALUES (11, "Kurtis", 750.00, 50, "L");
INSERT INTO clothing VALUES (12, "Shoes", 3500.00, 15, "L");
INSERT INTO clothing VALUES (13, "Scarf", 250.00, 15, "Onesize");
INSERT INTO clothing VALUES (14, "Shirt", 880.00, 30, "M");
INSERT INTO clothing VALUES (15, "Gym wear", 500.00, 30, "L");

SELECT *FROM clothing
ORDER BY price;

SELECT sum(quantity) FROM clothing;








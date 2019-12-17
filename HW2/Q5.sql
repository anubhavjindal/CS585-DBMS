/* DBMS I used : MySQL */

/* Create Table */
CREATE TABLE CHEFS (
    CHEF VARCHAR(1),
    DISH VARCHAR(20));


/* Insert Values into the Table */
INSERT INTO CHEFS VALUES
    ('A','Apple pie'),
    ('A','Beignet'),
    ('A','Andes Chocolate Cake'),
    ('B','Tiramisu'),
    ('B','Crème brulee'),
    ('B','Beignet'),
    ('C','Tiramisu'),
    ('C','Creme brulee'),
    ('D','Apple pie'),
    ('D','Tiramisu'),
    ('D','Creme brulee'),
    ('E','Apple pie'),
    ('E','Bananas Foster'),
    ('E','Creme brulee'),
    ('E','Tiramisu');

/* Create second table for dishes */
CREATE TABLE DISH (
    NAME VARCHAR(20)
);

/* Insert values in the dish table */
INSERT INTO DISH VALUES
    ('Creme brulee'),
    ('Apple pie'),
    ('Tiramisu');

/* First Solution */
We basically have to do a DIVIDE operation. In the query below, I have selected the chefs from the first table 
by using an inner query of filtering all the dishes from the second table. By using the "IN" condition we get
the chefs that can make either of the one dishes mentioned in the second table (DISH). By putting COUNT condition, 
for any chef which makes all the dishes in the DISH table, the count would return the number of dishes in the DISH 
table (3 in our case). The answer would be matched with the chef name that is repeated 3 times once per dish. 

SELECT CHEF FROM CHEFS 
WHERE DISH IN (SELECT NAME FROM DISH) 
GROUP BY CHEF 
HAVING COUNT(*) = (SELECT COUNT(NAME) FROM DISH) 
ORDER BY CHEF;


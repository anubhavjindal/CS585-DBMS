/* DBMS I used : MySQL */

/* Second Solution */
We can also obtain the same result using the INTERSECTION operation. The inner query is running for 
every CHEF in the first table for whom the dish matches the NAME in the second table.  Then it counts 
and compares the count of dishes with the one in the second table. If both match ( Count = 3 in the 
    example given in the question), we display the chef name for our result.

SELECT DISTINCT(C.CHEF) FROM CHEFS C
WHERE ( 
    SELECT COUNT(1) FROM (
        SELECT DISH FROM CHEFS
                     WHERE CHEF = C.CHEF
                     AND DISH IN 
                     (SELECT NAME FROM DISH))a) = (SELECT COUNT(1) FROM DISH)
ORDER BY C.CHEF;
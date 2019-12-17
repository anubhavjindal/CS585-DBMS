/* DBMS I used : MySQL */

/* Third Solution */
In this query, I have used a different approach of joining the two table through INNER JOIN which 
returns the matched values from both the tables on the condition where the dish name are same. 
Again, it checks the count of the dishes for a particular chef to be equal to the one mentioned 
in the second table DISH. 

SELECT C.CHEF FROM CHEFS C 
INNER JOIN DISH R ON C.DISH = R.NAME 
GROUP BY C.CHEF 
HAVING COUNT(DISTINCT R.NAME) = (SELECT DISTINCT COUNT(1) FROM DISH)
ORDER BY C.CHEF;
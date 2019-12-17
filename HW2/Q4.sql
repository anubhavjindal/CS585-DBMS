/* DBMS I used : MySQL */

/* Create Table */
CREATE TABLE JUNKMAIL (
    NAME VARCHAR(7),
    ADDRESS VARCHAR(1),
    ID INTEGER,
    SAMEFAM INTEGER);

/* Insert Values into the Table */
INSERT INTO JUNKMAIL VALUES
    ('Alice','A',10,NULL),
    ('Bob','B',15,NULL),
    ('Carmen','C',22,NULL),
    ('Diego','A',9,10),
    ('Ella','B',3,15),
    ('Farkhad','D',11,NULL);

/* Solution to Question 4 */
DELETE FROM JUNKMAIL 
WHERE SAMEFAM IS NULL 
AND ID IN(
    SELECT SAMEFAM 
    FROM (SELECT * FROM JUNKMAIL 
    WHERE SAMEFAM IS NOT NULL) A);

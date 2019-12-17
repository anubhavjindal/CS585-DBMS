/* DBMS I used : MySQL */

/* Create Table */
CREATE TABLE WORKORDERS (
    PROJECTID VARCHAR(4),
    STEP INTEGER,
    STATUS VARCHAR(1));

/* Insert Values into the Table */
INSERT INTO WORKORDERS VALUES
    ('P100',0,'C'),
    ('P100',1,'W'),
    ('P100',2,'W'),
    ('P201',0,'C'),
    ('P201',1,'C'),
    ('P333',0,'W'),
    ('P333',1,'W'),
    ('P333',2,'W'),
    ('P333',3,'W');

/* Solution to Question 3 */
SELECT PROJECTID 
FROM WORKORDERS
 WHERE STEP = 0 
 AND STATUS='C' 
 AND PROJECTID IN(
    SELECT PROJECTID 
    FROM WORKORDERS 
    WHERE STEP = 1 
    AND STATUS = 'W');
    
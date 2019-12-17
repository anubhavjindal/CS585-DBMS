/* DBMS I used : MySQL */

/* Create Table */
CREATE TABLE GRADES (
    SID INTEGER,
    CLASSNAME VARCHAR(7),
    GRADE VARCHAR(1)
);

/* Insert Values into the Table */
INSERT INTO GRADES VALUES
    (123,'ARCH201','A'),
    (123,'QUAN432','B'),
    (662,'AMER352','B'),
    (662,'ECON966','A'),
    (662,'QUAN432','B'),
    (345,'QUAN432','A'),
    (345,'ECON966','D');

/* Solution to the Question */
SELECT CLASSNAME, COUNT(SID) 
	FROM GRADES 
	GROUP BY CLASSNAME 
	ORDER BY COUNT(SID) DESC, CLASSNAME;
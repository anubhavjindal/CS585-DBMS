/* DBMS I used : MySQL */

/* Solution */
I could simply redesign the table my using a single attribute date instead of arrival date and a departure date. 
The new primary key would be a composite key (roomNum, Date) and the table would consist of an entry corresponding 
to each day(date) is it occupied.

/* Create table query for above approach */
CREATE TABLE HotelStays (
    roomNum INTEGER NOT NULL,
    Date DATE NOT NULL,
    guestName CHAR(30) NOT NULL,
    PRIMARY KEY (roomNum, Date)
);

/* Explanation with Illustration*/
Previously the table was as below.

roomNum     arrDate             depDate                 guestName
123         February 2, 2016    February 6, 2016        A
123         February 4, 2016    February 8, 2016        B
201         February 10, 2016   February 6, 2016        C

We see that there are issues in this aproach 
1. In the 3rd row, we see arrival date is before the departure date
2. In the 2nd row, we see that the same room is on an overlap occupancy 

After re-designing the table, the new table will looks like below.

roomNum        Date                 guestName
123            February 2, 2016     A
123            February 3, 2016     A
123            February 4, 2016     A
123            February 5, 2016     A
123            February 6, 2016     A
123            February 7, 2016     B
123            February 8, 2016     B
201            February 10, 2016    C

/* First problem solved */
since we just have one Date, now we do not have the to think about the first issue where arrDate <= depDate.

/* Second problem also solved */ 
A new entry could not be created for a new guest for a particular room before the existing guest leaves that room 
because that would result in a violation of the primary key.

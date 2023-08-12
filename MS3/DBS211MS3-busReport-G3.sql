/*
DBS211NEE - Final Project MS3 - Business Report
Song Hwan Oh / 116872227 
Sangjune Lee / 123050221 
Ji Ho Nam / 139817217 
Shine Lee / 130563224 
August 12, 2023
*/

/*
A single SQL file providing the scripting to create at least 4 VIEWS, that provide a report on the data that support the business, or organization, in making informed business decisions. 
Each report should have a paragraph writeup – in comment form, that explain the purpose of the report and how the business will benefit from having the report.
*/

/*
1. show me the match results of the matches that user 15 set as favorite
*/



/*
2. show me all the events that happened for match no. 15
*/


/*
3. tell me the top 3 scorers who are 25 years or younger in descending order
*/
CREATE VIEW vwYouthPlayer AS
SELECT 
    p.playerid,
    lastName || ', ' || firstName AS fullName,
    TRUNC(MONTHS_BETWEEN(sysdate, DOB)/12) AS AGE,
    p.shirtnumber AS shirts,
    p.fposition,
    p.clubteam,
    ct.countryName AS country,
    e.EVENTTYPE
FROM xperson
    join xplayer p ON p.playerID = personID
    join xevents e ON p.playerID = e.playerID
    join xcountry ct ON ct.countryID = p.countryID
WHERE e.EVENTTYPE = 'GL';


/*
SELECT * FROM vwYouthPlayer
WHERE AGE <= 25 DESC;
*/


/*
4. give me the list of the club team in descending order most no. of players representing their national team
*/
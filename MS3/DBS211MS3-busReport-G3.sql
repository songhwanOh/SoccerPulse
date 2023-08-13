/*
DBS211NEE - Final Project MS3 - Business Report
Song Hwan Oh / 116872227 
Sangjune Lee / 123050221 
Ji Ho Nam / 139817217 
Shine Lee / 130563224 
August 12, 2023
*/

/*A single SQL file providing the scripting to create at least 4 VIEWS, that provide a report on the data that support the business, or organization, in making informed business decisions. 
Each report should have a paragraph writeup â€“ in comment form, that explain the purpose of the report and how the business will benefit from having the report.
/

/
1. show me the match results of the matches that user 2 set as favorite
*/
CREATE OR REPLACE VIEW vwMatchUserTwo AS
SELECT 
    m.MatchID,
    m.dateNTIme,
    m.A_score AS HOME_SCORE,
    m.B_score AS AWAY_SCORE,
    p.firstName,
    p.LastName,
    p.dob,
    co.COUNTRYNAME AS HOME_NAME,
    coun.COUNTRYNAME AS AWAY_NAME,
    co.continent AS HOME_CONTINENT,
    coun.continent AS AWAY_CONTINENT,
    co.capitalcity AS HOME_CITY,
    coun.capitalcity AS AWAY_CITY,
    co.fifaranking AS HOME_RANK,
    coun.fifaranking AS AWAY_RANK,
    co.groupname
FROM xMATCH m
INNER JOIN xFAVORITES_SETTING fm ON m.matchID = fm.favoriteMatchID
INNER JOIN xCOUNTRY co ON m.COUNTRYID_a = co.COUNTRYID
INNER JOIN xCOUNTRY coun ON m.COUNTRYID_b = coun.COUNTRYID
INNER JOIN xUSERS u ON fm.USERID = u.USERID
INNER JOIN xPERSON p ON u.userID = p.personID
WHERE fm.userID = 2 AND fm.notify = 1;

SELECT * FROM vwMatchUserTwo

/*
2. show me all the events that happened for match no 1015
*/


/*
3. tell me all the scorers who are 25 years or younger in descending order
*/



/*
4. What are the demographics of users and their preferences, such as preferred language and country residence?
*/


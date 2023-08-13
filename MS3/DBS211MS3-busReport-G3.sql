/*
DBS211NEE - Final Project MS3 - Business Report
Song Hwan Oh / 116872227 
Sangjune Lee / 123050221 
Ji Ho Nam / 139817217 
Shine Lee / 130563224 
August 13, 2023
*/

/*A single SQL file providing the scripting to create at least 4 VIEWS, that provide a report on the data that support the business, or organization, in making informed business decisions. 
Each report should have a paragraph writeup â€“ in comment form, that explain the purpose of the report and how the business will benefit from having the report.
/

/
1. show me the match results of the matches that user 22 set as favorite and set notifications on. 
*/
CREATE OR REPLACE VIEW vwMatchUserTwo AS
SELECT 
    p.firstName,
    p.LastName,
    p.dob,
    m.MatchID,
    TO_CHAR(m.dateNTime, 'YYYY-MM-DD HH24:MI') AS MatchDate,
    co.COUNTRYNAME AS HOME_NAME,
    coun.COUNTRYNAME AS AWAY_NAME,
    m.A_score AS HOME_SCORE,
    m.B_score AS AWAY_SCORE,
    co.continent AS HOME_CONTINENT,
    coun.continent AS AWAY_CONTINENT,
    co.capitalcity AS HOME_CITY,
    coun.capitalcity AS AWAY_CITY,
    co.fifaranking AS HOME_RANK,
    coun.fifaranking AS AWAY_RANK,
    mt.matchTypeDesc
FROM xMATCH m
INNER JOIN xFAVORITES_SETTING fm ON m.matchID = fm.favoriteMatchID
INNER JOIN xCOUNTRY co ON m.COUNTRYID_a = co.COUNTRYID
INNER JOIN xCOUNTRY coun ON m.COUNTRYID_b = coun.COUNTRYID
INNER JOIN xUSERS u ON fm.USERID = u.USERID
INNER JOIN xPERSON p ON u.userID = p.personID
INNER JOIN xMatch_Type mt ON m.matchType = mt.matchType
WHERE fm.userID = 22 AND fm.notify = 1;

SELECT * FROM vwMatchUserTwo;

/*
2. show me all the events that happened for match no 1015
*/

CREATE OR REPLACE VIEW vwMatchEvent1005Details AS
SELECT DISTINCT
    m.matchId,
    cA.countryname AS A_team,
    cB.countryname AS B_team,
    e.eventid,
    e.playerid,
    e.regulartime,
    e.adittionaltime,
    xp.firstname,
    xp.lastname,
    e2.*
FROM xMatch m
INNER JOIN xEvents e ON m.matchID = e.matchID
INNER JOIN xPlayer p ON p.playerId =  e.playerId
INNER JOIN xPerson xp ON xp.personId = p.playerId
INNER JOIN xCountry cA ON m.countryid_a = cA.countryId
INNER JOIN xCountry cB ON m.countryid_b = cB.countryId
INNER JOIN xEvents_desc e2 ON e.eventType = e2.eventType
WHERE m.matchId = 1005
ORDER BY e.regulartime;

SELECT * FROM vwMatchEvent1005Details;
/*
3. Show me the list of players who are 25 years or younger(inclusive) who scored at least one goal, sort by age in descending order
*/
CREATE OR REPLACE VIEW vwYouthPlayer AS
SELECT DISTINCT
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


SELECT * FROM vwYouthPlayer
WHERE AGE <= 25
ORDER BY AGE DESC;



/*
4. What are the demographics of users and their preferences, such as preferred language and country residence,
who have turn on notifications?
*/

CREATE OR REPLACE VIEW vwUserDemographics AS
SELECT
    u.userID,
    p.lastName || ', ' || p.firstName AS fullName,
    p.DOB,
    u.email,
    u.prefLanguage,
    c.countryName AS countryResidence
FROM
    xUSERS u
JOIN
    xPERSON p ON u.userID = p.personID
LEFT JOIN
    xCOUNTRY c ON u.countryResidence = c.countryID
WHERE
    u.userID IN (
        SELECT fs.userID
        FROM xFAVORITES_SETTING fs
        WHERE fs.notify = '1'
    );
    
SELECT * FROM vwUserDemographics;
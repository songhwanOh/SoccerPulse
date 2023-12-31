/*
DBS211NEE - Final Project MS3 - Data Script
Song Hwan Oh / 116872227 
Sangjune Lee / 123050221 
Ji Ho Nam / 139817217 
Shine Lee / 130563224 
August 13, 2023
*/

/*
providing the scripting to insert sample data into all tables.  
The amount of data should be enough to allow addiquate testing of an application build upon the designed database.  
Rule of Thumb: 20-30 rows per data tables and their associated bridge tables, and an appropriate number of rows in lookup tables.
*/
-- xCOUNTRY Table data
INSERT ALL
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (1, 'USA', 'NA', 'Washington, D.C.', 10, 'A')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (2, 'Bra', 'SA', 'Brasília', 5, 'B')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (3, 'Ger', 'EU', 'Berlin', 7, 'C')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (4, 'Fra', 'EU', 'Paris', 8, 'D')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (5, 'Arg', 'SA', 'Buenos Aires', 6, 'E')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (6, 'Esp', 'EU', 'Madrid', 9, 'F')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (7, 'Ita', 'EU', 'Rome', 12, 'G')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (8, 'Eng', 'EU', 'London', 11, 'H')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (9, 'Ned', 'EU', 'Amsterdam', 14, 'A')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (10, 'Mex', 'NA', 'Mexico City', 15, 'B')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (11, 'Por', 'EU', 'Lisbon', 18, 'C')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (12, 'Cle', 'SA', 'Santiago', 20, 'D')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (13, 'Bel', 'EU', 'Brussels', 16, 'E')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (14, 'Urg', 'SA', 'Montevideo', 22, 'F')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (15, 'Col', 'SA', 'Bogotá', 17, 'G')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (16, 'Cro', 'EU', 'Zagreb', 19, 'H')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (17, 'Rus', 'EU', 'Moscow', 23, 'A')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (18, 'Gha', 'AF', 'Accra', 28, 'B')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (19, 'Jap', 'AS', 'Tokyo', 27, 'C')
    INTO xCOUNTRY (countryID, countryName, continent, capitalCity, FIFARanking, groupName) VALUES (20, 'Aus', 'OC', 'Canberra', 31, 'D')
SELECT * FROM DUAL;


-- xPERSON Table data
INSERT ALL
  INTO xPERSON (personID, firstName, lastName, DOB) VALUES (1, 'Susan', 'Doe', TO_DATE('1990-05-15', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (2, 'Jane', 'Smith', TO_DATE('1985-08-20', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (3, 'Michelle', 'Johnson', TO_DATE('1993-02-10', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (4, 'Emily', 'Brown', TO_DATE('1992-11-30', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (5, 'Samantha', 'Williams', TO_DATE('1988-04-25', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (6, 'Sophia', 'Miller', TO_DATE('1995-07-08', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (7, 'Janet', 'Jones', TO_DATE('1987-01-12', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (8, 'Olivia', 'Davis', TO_DATE('1991-09-18', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (9, 'Daniela', 'Wilson', TO_DATE('1989-03-22', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (10, 'Ava', 'Taylor', TO_DATE('1994-06-05', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (11, 'Angelina', 'Evans', TO_DATE('1998-10-01', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (12, 'Mia', 'Thomas', TO_DATE('1997-12-14', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (13, 'Johanna', 'Martinez', TO_DATE('1996-02-28', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (14, 'Emma', 'Hernandez', TO_DATE('1999-04-11', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (15, 'Alex', 'Lopez', TO_DATE('1991-07-23', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (16, 'Sofia', 'Garcia', TO_DATE('1993-09-09', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (17, 'Michelle', 'Rivera', TO_DATE('1990-11-05', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (18, 'Isabella', 'Lee', TO_DATE('1992-01-19', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (19, 'Emma', 'Rodriguez', TO_DATE('1988-03-27', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (20, 'Amelia', 'Perez', TO_DATE('1987-06-30', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (21, 'Jennifer', 'Smith', TO_DATE('1994-08-15', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (22, 'Michael', 'Brown', TO_DATE('1989-02-20', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (23, 'Matthew', 'Johnson', TO_DATE('1996-03-10', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (24, 'Grace', 'Williams', TO_DATE('1993-11-30', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (25, 'Andrew', 'Miller', TO_DATE('1987-04-25', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (26, 'David', 'Jones', TO_DATE('1995-07-08', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (27, 'Sarah', 'Davis', TO_DATE('1992-01-12', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (28, 'Jessica', 'Wilson', TO_DATE('1989-10-18', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (29, 'Kevin', 'Taylor', TO_DATE('1991-06-05', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (30, 'Emily', 'Evans', TO_DATE('1997-09-01', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (31, 'Nathan', 'Martinez', TO_DATE('1994-03-28', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (32, 'Sophie', 'Hernandez', TO_DATE('1999-04-11', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (33, 'Liam', 'Lopez', TO_DATE('1993-05-23', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (34, 'Ava', 'Garcia', TO_DATE('1990-09-09', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (35, 'William', 'Rivera', TO_DATE('1995-11-05', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (36, 'Sophia', 'Lee', TO_DATE('1988-01-19', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (37, 'Oliver', 'Rodriguez', TO_DATE('1992-03-27', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (38, 'Grace', 'Perez', TO_DATE('1997-06-30', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (39, 'Lucas', 'Smith', TO_DATE('1996-08-15', 'YYYY-MM-DD'))
    INTO xPERSON (personID, firstName, lastName, DOB) VALUES (40, 'Emily', 'Brown', TO_DATE('1990-02-20', 'YYYY-MM-DD'))
SELECT * FROM DUAL;

-- xPLAYER Table
INSERT ALL
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (1, 10, 'FW', 180, 75, 'Manchester United', 'R', 1)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (2, 7, 'MF', 175, 68, 'Paris Saint-Germain', 'L', 2)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (3, 5, 'CB', 190, 82, 'Bayern Munich', 'R', 11)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (4, 9, 'FW', 170, 70, 'Barcelona', 'L', 4)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (5, 11, 'MF', 178, 72, 'Barcelona', 'R', 5)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (6, 3, 'CB', 185, 80, 'Liverpool', 'R', 6)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (7, 8, 'MF', 180, 75, 'Real Madrid', 'L', 11)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (8, 6, 'CB', 188, 85, 'Juventus', 'R', 8)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (9, 20, 'FW', 175, 70, 'Manchester United', 'L', 9)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (10, 15, 'MF', 170, 68, 'Toronto FC', 'R', 10)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (11, 18, 'CB', 185, 75, 'Paris Saint-Germain', 'L', 7)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (12, 9, 'FW', 175, 72, 'Bayern Munich', 'R', 12)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (13, 14, 'MF', 180, 75, 'Bayern Munich', 'L', 13)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (14, 7, 'CB', 190, 82, 'Liverpool', 'R', 14)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (15, 23, 'FW', 170, 70, 'Liverpool', 'L', 15)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (16, 8, 'MF', 175, 68, 'Juventus', 'R', 8)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (17, 6, 'CB', 180, 75, 'Sporting CP', 'L', 3)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (18, 10, 'FW', 178, 72, 'Bayern Munich', 'R', 18)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (19, 11, 'MF', 185, 80, 'Bayern Munich', 'L', 19)
    INTO xPLAYER (playerID, shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID) VALUES (20, 4, 'CB', 175, 70, 'Paris Saint-Germain', 'R', 20)
SELECT * FROM DUAL;

-- xUSERS Table data
INSERT ALL
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (21, 'user1@example.com', 1, 'EN', 'user1')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (22, 'user2@example.com', 2, 'EN', 'user2')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (23, 'user3@example.com', 3, 'EN', 'user3')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (24, 'user4@example.com', 4, 'EN', 'user4')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (25, 'user5@example.com', 5, 'EN', 'user5')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (26, 'user6@example.com', 6, 'EN', 'user6')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (27, 'user7@example.com', 7, 'EN', 'user7')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (28, 'user8@example.com', 8, 'EN', 'user8')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (29, 'user9@example.com', 9, 'EN', 'user9')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (30, 'user10@example.com', 10, 'EN', 'user10')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (31, 'user11@example.com', 1, 'EN', 'user11')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (32, 'user12@example.com', 2, 'EN', 'user12')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (33, 'user13@example.com', 3, 'EN', 'user13')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (34, 'user14@example.com', 4, 'EN', 'user14')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (35, 'user15@example.com', 5, 'EN', 'user15')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (36, 'user16@example.com', 6, 'EN', 'user16')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (37, 'user17@example.com', 7, 'EN', 'user17')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (38, 'user18@example.com', 8, 'EN', 'user18')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (39, 'user19@example.com', 9, 'EN', 'user19')
    INTO xUSERS (userID, email, countryResidence, prefLanguage, nickName)
    VALUES (40, 'user20@example.com', 10, 'EN', 'user20')
SELECT * FROM DUAL;

-- xVENUE Table data
INSERT ALL
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (1, 'Stadium A', 'City A', 50000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (2, 'Stadium B', 'City B', 45000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (3, 'Stadium C', 'City C', 60000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (4, 'Stadium D', 'City D', 55000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (5, 'Stadium E', 'City E', 70000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (6, 'Stadium F', 'City F', 40000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (7, 'Stadium G', 'City G', 65000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (8, 'Stadium H', 'City H', 60000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (9, 'Stadium I', 'City I', 55000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (10, 'Stadium J', 'City J', 50000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (11, 'Stadium K', 'City K', 45000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (12, 'Stadium L', 'City L', 60000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (13, 'Stadium M', 'City M', 55000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (14, 'Stadium N', 'City N', 70000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (15, 'Stadium O', 'City O', 40000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (16, 'Stadium P', 'City P', 65000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (17, 'Stadium Q', 'City Q', 60000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (18, 'Stadium R', 'City R', 55000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (19, 'Stadium S', 'City S', 50000)
    INTO xVENUE (venueID, venueName, city, vCapacity) VALUES (20, 'Stadium T', 'City T', 45000)
SELECT * FROM DUAL;



-- xMATCH_TYPE Table data
INSERT ALL
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('f', 'Friendly')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('q', 'qualifier')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('P', 'Playoff')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('R', 'Round Robin')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('S', 'Semifinal')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('F', 'Final')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('G', 'Group Stage')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('Q', 'Quarterfinal')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('E', 'Eighthfinal')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('T', 'Test')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('M', 'Match')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('L', 'League')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('D', 'Draw')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('C', 'Championship')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('N', 'National')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('W', 'World')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('X', 'Exhibition')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('Z', 'Zone')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('Y', 'Youth')
    INTO xMATCH_TYPE (matchType, matchTypeDesc) VALUES ('O', 'Others')
SELECT * FROM DUAL;

-- xMATCH Table data 
INSERT ALL
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1001, 1, 2, TO_DATE('2023-08-11 15:00', 'YYYY-MM-DD HH24:MI'), 1, 2, 1, 'F')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1002, 3, 4, TO_DATE('2023-08-12 14:30', 'YYYY-MM-DD HH24:MI'), 2, 0, 2, 'S')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1003, 5, 6, TO_DATE('2023-08-13 16:15', 'YYYY-MM-DD HH24:MI'), 3, 1, 1, 'Q')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1004, 7, 8, TO_DATE('2023-08-14 17:00', 'YYYY-MM-DD HH24:MI'), 4, 3, 2, 'R')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1005, 9, 10, TO_DATE('2023-08-15 15:30', 'YYYY-MM-DD HH24:MI'), 5, 0, 0, 'S')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1006, 11, 12, TO_DATE('2023-08-16 14:45', 'YYYY-MM-DD HH24:MI'), 6, 1, 3, 'Q')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1007, 13, 14, TO_DATE('2023-08-17 16:00', 'YYYY-MM-DD HH24:MI'), 7, 2, 2, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1008, 15, 16, TO_DATE('2023-08-18 17:15', 'YYYY-MM-DD HH24:MI'), 8, 1, 1, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1009, 17, 18, TO_DATE('2023-08-19 15:45', 'YYYY-MM-DD HH24:MI'), 9, 2, 0, 'Q')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1010, 19, 20, TO_DATE('2023-08-20 14:00', 'YYYY-MM-DD HH24:MI'), 10, 3, 1, 'F')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1011, 2, 3, TO_DATE('2023-08-21 16:30', 'YYYY-MM-DD HH24:MI'), 1, 1, 2, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1012, 4, 5, TO_DATE('2023-08-22 17:45', 'YYYY-MM-DD HH24:MI'), 2, 2, 0, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1013, 6, 7, TO_DATE('2023-08-23 15:15', 'YYYY-MM-DD HH24:MI'), 3, 0, 1, 'Q')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1014, 8, 9, TO_DATE('2023-08-24 14:30', 'YYYY-MM-DD HH24:MI'), 4, 1, 1, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1015, 10, 11, TO_DATE('2023-08-25 16:00', 'YYYY-MM-DD HH24:MI'), 5, 2, 3, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1016, 12, 13, TO_DATE('2023-08-26 17:15', 'YYYY-MM-DD HH24:MI'), 6, 3, 2, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1017, 14, 15, TO_DATE('2023-08-27 15:30', 'YYYY-MM-DD HH24:MI'), 7, 0, 1, 'R')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1018, 16, 17, TO_DATE('2023-08-28 14:45', 'YYYY-MM-DD HH24:MI'), 8, 1, 0, 'G')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1019, 18, 19, TO_DATE('2023-08-29 16:15', 'YYYY-MM-DD HH24:MI'), 9, 2, 2, 'R')
    INTO xMATCH (matchID, countryID_A, countryID_B, dateNTime, venueID, a_score, b_score, matchType)
        VALUES (1020, 20, 1, TO_DATE('2023-08-30 17:30', 'YYYY-MM-DD HH24:MI'), 10, 3, 1, 'R')
SELECT * FROM DUAL;

-- xEVENT_DESC Table data
INSERT ALL
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('GL', 'Goal')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('AS', 'Assist')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('YC', 'Yellow Card')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('RC', 'Red Card')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('PS', 'Penalty Save')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('PG', 'Penalty Goal')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('OG', 'Own Goal')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('SU', 'Substitution')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('CF', 'Corner Kick')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('FK', 'Free Kick')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('TH', 'Throw-in')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('OF', 'Offside')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('IN', 'Injury')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('TR', 'Time Run')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('LB', 'Long Ball')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('CR', 'Cross')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('DR', 'Dribble')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('BL', 'Block')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('ST', 'Shot')
    INTO xEVENTS_DESC (eventType, eventDesc) VALUES ('PK', 'Penalty Kick')
SELECT * FROM DUAL;


-- xEVENTS Table data 
INSERT ALL
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (1, 1001, 'GL', 1, 20, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (2, 1002, 'GL', 4, 45, 2)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (3, 1003, 'YC', 7, 60, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (4, 1004, 'GL', 10, 78, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (5, 1005, 'GL', 13, 15, 1)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (6, 1005, 'RC', 16, 34, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (7, 1005, 'GL', 2, 5, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (8, 1008, 'YC', 5, 30, 3)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (9, 1009, 'GL', 8, 70, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (10, 1008, 'GL', 12, 40, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (11, 1020, 'RC', 7, 50, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (12, 1015, 'GL', 14, 88, 1)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (13, 1018, 'GL', 17, 10, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (14, 1002, 'YC', 19, 30, 2)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (15, 1004, 'GL', 1, 65, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (16, 1005, 'GL', 3, 12, 1)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (17, 1008, 'YC', 6, 38, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (18, 1006, 'PK', 9, 55, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (19, 1001, 'GL', 13, 23, 0)
    INTO xEVENTS (eventID, matchID, eventType, playerID, regularTime, adittionalTime) VALUES (20, 1007, 'RC', 13, 70, 0)
SELECT * FROM DUAL;

-- xFAVORITES_SETTING Table data
INSERT ALL
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (2, 1001, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (2, 1020, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (2, 1015, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (3, 1019, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (3, 1005, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (3, 1008, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (4, 1007, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (4, 1008, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (4, 1005, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (5, 1002, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (5, 1011, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (5, 1016, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (6, 1010, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (6, 1015, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (6, 1018, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (7, 1020, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (7, 1015, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (7, 1017, '1')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (8, 1019, '0')
    INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify) VALUES (8, 1008, '1')
SELECT * FROM DUAL;

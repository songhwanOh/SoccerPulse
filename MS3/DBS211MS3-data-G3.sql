/*
DBS211NEE - Final Project MS3 - Data Script
Song Hwan Oh / 116872227 
Sangjune Lee / 123050221 
Ji Ho Nam / 139817217 
Shine Lee / 130563224 
August 4, 2023
*/

/*
providing the scripting to insert sample data into all tables.  
The amount of data should be enough to allow addiquate testing of an application build upon the designed database.  
Rule of Thumb: 20-30 rows per data tables and their associated bridge tables, and an appropriate number of rows in lookup tables.
*/

INSERT INTO xCOUNTRY (countryName, continent, capitalCity, FIFARanking, groupName)
VALUES 
  ('USA', 'North America', 'Washington, D.C.', 10, 'A'),
  ('Brazil', 'South America', 'Brasília', 5, 'B'),
  ('Germany', 'Europe', 'Berlin', 7, 'C'),
  ('France', 'Europe', 'Paris', 8, 'D'),
  ('Argentina', 'South America', 'Buenos Aires', 6, 'E'),
  ('Spain', 'Europe', 'Madrid', 9, 'F'),
  ('Italy', 'Europe', 'Rome', 12, 'G'),
  ('England', 'Europe', 'London', 11, 'H'),
  ('Netherlands', 'Europe', 'Amsterdam', 14, 'A'),
  ('Mexico', 'North America', 'Mexico City', 15, 'B'),
  ('Portugal', 'Europe', 'Lisbon', 18, 'C'),
  ('Chile', 'South America', 'Santiago', 20, 'D'),
  ('Belgium', 'Europe', 'Brussels', 16, 'E'),
  ('Uruguay', 'South America', 'Montevideo', 22, 'F'),
  ('Colombia', 'South America', 'Bogotá', 17, 'G'),
  ('Croatia', 'Europe', 'Zagreb', 19, 'H'),
  ('Russia', 'Europe', 'Moscow', 23, 'A'),
  ('Ghana', 'Africa', 'Accra', 28, 'B'),
  ('Japan', 'Asia', 'Tokyo', 27, 'C'),
  ('Australia', 'Oceania', 'Canberra', 31, 'D');

INSERT INTO xPERSON (firstName, lastName, DOB)
VALUES 
  ('John', 'Doe', TO_DATE('1990-05-15', 'YYYY-MM-DD')),
  ('Jane', 'Smith', TO_DATE('1985-08-20', 'YYYY-MM-DD')),
  ('Michael', 'Johnson', TO_DATE('1993-02-10', 'YYYY-MM-DD')),
  ('Emily', 'Brown', TO_DATE('1992-11-30', 'YYYY-MM-DD')),
  ('David', 'Williams', TO_DATE('1988-04-25', 'YYYY-MM-DD')),
  ('Sophia', 'Miller', TO_DATE('1995-07-08', 'YYYY-MM-DD')),
  ('James', 'Jones', TO_DATE('1987-01-12', 'YYYY-MM-DD')),
  ('Olivia', 'Davis', TO_DATE('1991-09-18', 'YYYY-MM-DD')),
  ('Daniel', 'Wilson', TO_DATE('1989-03-22', 'YYYY-MM-DD')),
  ('Ava', 'Taylor', TO_DATE('1994-06-05', 'YYYY-MM-DD')),
  ('William', 'Evans', TO_DATE('1998-10-01', 'YYYY-MM-DD')),
  ('Mia', 'Thomas', TO_DATE('1997-12-14', 'YYYY-MM-DD')),
  ('Joseph', 'Martinez', TO_DATE('1996-02-28', 'YYYY-MM-DD')),
  ('Emma', 'Hernandez', TO_DATE('1999-04-11', 'YYYY-MM-DD')),
  ('Alexander', 'Lopez', TO_DATE('1991-07-23', 'YYYY-MM-DD')),
  ('Sofia', 'Garcia', TO_DATE('1993-09-09', 'YYYY-MM-DD')),
  ('Michael', 'Rivera', TO_DATE('1990-11-05', 'YYYY-MM-DD')),
  ('Isabella', 'Lee', TO_DATE('1992-01-19', 'YYYY-MM-DD')),
  ('Ethan', 'Rodriguez', TO_DATE('1988-03-27', 'YYYY-MM-DD')),
  ('Amelia', 'Perez', TO_DATE('1987-06-30', 'YYYY-MM-DD'));

INSERT INTO xPLAYER (shirtNumber, fPosition, height, weight, clubTeam, dominantFoot, countryID)
VALUES 
  (7, 'FW', 180, 75, 'FC Barcelona', 'L', 1),
  (10, 'MF', 175, 68, 'Real Madrid', 'R', 2),
  (5, 'DF', 190, 85, 'Bayern Munich', 'R', 3),
  (20, 'FW', 178, 72, 'Paris Saint-Germain', 'L', 4),
  (8, 'MF', 182, 78, 'Manchester City', 'R', 5),
  (3, 'DF', 186, 83, 'Liverpool', 'R', 6),
  (11, 'FW', 183, 77, 'AC Milan', 'R', 7),
  (4, 'MF', 177, 70, 'Chelsea', 'L', 8),
  (6, 'DF', 191, 88, 'Ajax', 'R', 9),
  (9, 'FW', 179, 74, 'Club América', 'L', 10),
  (2, 'MF', 176, 71, 'Sporting CP', 'R', 11),
  (18, 'DF', 184, 80, 'Colo-Colo', 'L', 12),
  (14, 'FW', 181, 76, 'Anderlecht', 'R', 13),
  (17, 'MF', 180, 73, 'Peñarol', 'R', 14),
  (22, 'DF', 183, 79, 'Atletico Nacional', 'L', 15),
  (16, 'FW', 177, 75, 'Deportivo Cali', 'R', 16),
  (13, 'MF', 179, 72, 'Dinamo Zagreb', 'L', 17),
  (19, 'DF', 182, 78, 'Lokomotiv Moscow', 'R', 18),
  (23, 'FW', 185, 82, 'Hearts of Oak', 'L', 19),
  (15, 'MF', 176, 70, 'Kashima Antlers', 'R', 20);

INSERT INTO xUSERS (email, countryResidence, prefLanguage, nickName)
VALUES 
  ('john@example.com', 1, 'EN', 'JDoe'),
  ('jane@example.com', 2, 'EN', 'JSmith'),
  ('michael@example.com', 3, 'EN', 'MJohnson'),
  ('emily@example.com', 4, 'EN', 'EBrown'),
  ('david@example.com', 5, 'EN', 'DWilliams'),
  ('sophia@example.com', 6, 'EN', 'SMiller'),
  ('james@example.com', 7, 'EN', 'JJones'),
  ('olivia@example.com', 8, 'EN', 'ODavis'),
  ('daniel@example.com', 9, 'EN', 'DWilson'),
  ('ava@example.com', 10, 'EN', 'ATaylor'),
  ('william@example.com', 11, 'EN', 'WEvans'),
  ('mia@example.com', 12, 'EN', 'MThomas'),
  ('joseph@example.com', 13, 'EN', 'JMartinez'),
  ('emma@example.com', 14, 'EN', 'EHernandez'),
  ('alexander@example.com', 15, 'EN', 'ALopez'),
  ('sofia@example.com', 16, 'EN', 'SGarcia'),
  ('michael2@example.com', 17, 'EN', 'MRivera'),
  ('isabella@example.com', 18, 'EN', 'ILee'),
  ('ethan@example.com', 19, 'EN', 'ERodriguez'),
  ('amelia@example.com', 20, 'EN', 'APerez');

INSERT INTO xVENUE (venueName, city, vCapacity)
VALUES 
  ('MetLife Stadium', 'East Rutherford', 82500),
  ('Rose Bowl', 'Pasadena', 90000),
  ('AT&T Stadium', 'Arlington', 80000),
  ('Gillette Stadium', 'Foxborough', 68756),
  ('Soldier Field', 'Chicago', 61500),
  ('Mercedes-Benz Superdome', 'New Orleans', 73208),
  ('Arrowhead Stadium', 'Kansas City', 76416),
  ('Empower Field at Mile High', 'Denver', 76125),
  ('CenturyLink Field', 'Seattle', 69000),
  ('Nissan Stadium', 'Nashville', 69274),
  ('Lincoln Financial Field', 'Philadelphia', 69029),
  ('Levi''s Stadium', 'Santa Clara', 68500),
  ('FedExField', 'Landover', 82000),
  ('Hard Rock Stadium', 'Miami Gardens', 64767),
  ('Bills Stadium', 'Orchard Park', 71608),
  ('FirstEnergy Stadium', 'Cleveland', 67895),
  ('M&T Bank Stadium', 'Baltimore', 71008),
  ('Paul Brown Stadium', 'Cincinnati', 65515),
  ('U.S. Bank Stadium', 'Minneapolis', 66655),
  ('State Farm Stadium', 'Glendale', 63400);

INSERT INTO xMATCH_TYPE (matchType, matchTypeDesc)
VALUES 
  ('F', 'Friendly'),
  ('C', 'Championship'),
  ('L', 'League'),
  ('C', 'Cup'),
  ('E', 'Exhibition'),
  ('Q', 'Qualification'),
  ('S', 'Semifinal'),
  ('F', 'Final'),
  ('P', 'Playoff'),
  ('A', 'All-Star'),
  ('T', 'Tournament'),
  ('M', 'Match'),
  ('R', 'Round'),
  ('G', 'Group'),
  ('D', 'Division'),
  ('B', 'Bracket'),
  ('H', 'Home/Away'),
  ('E', 'Elimination'),
  ('I', 'International'),
  ('N', 'National');

INSERT INTO xEVENTS_DESC (eventType, eventDesc)
VALUES 
  ('G', 'Goal'),
  ('YC', 'Yellow Card'),
  ('RC', 'Red Card'),
  ('S', 'Substitution'),
  ('P', 'Penalty'),
  ('F', 'Foul'),
  ('O', 'Offside'),
  ('C', 'Corner'),
  ('T', 'Throw-in'),
  ('I', 'Injury'),
  ('A', 'Assist'),
  ('M', 'Missed Shot'),
  ('D', 'Dribble'),
  ('N', 'Nutmeg'),
  ('R', 'Rebound'),
  ('H', 'Header'),
  ('E', 'Extra Time'),
  ('L', 'Long Pass'),
  ('K', 'Keeper Save'),
  ('B', 'Blocked Shot');

INSERT INTO xMATCH (countryID_A, countryID_B, dateNTime, venueID, matchType, a_score, b_score)
VALUES 
  (1, 2, TO_DATE('2023-08-10 15:00', 'YYYY-MM-DD HH24:MI'), 1, 'F', 2, 1),
  (2, 3, TO_DATE('2023-08-11 14:30', 'YYYY-MM-DD HH24:MI'), 2, 'C', 1, 3),
  (1, 3, TO_DATE('2023-08-12 16:15', 'YYYY-MM-DD HH24:MI'), 3, 'C', 0, 0),
  (4, 5, TO_DATE('2023-08-13 18:30', 'YYYY-MM-DD HH24:MI'), 4, 'L', 2, 2),
  (6, 7, TO_DATE('2023-08-14 20:45', 'YYYY-MM-DD HH24:MI'), 5, 'C', 3, 1),
  (8, 9, TO_DATE('2023-08-15 12:00', 'YYYY-MM-DD HH24:MI'), 6, 'F', 1, 0),
  (10, 11, TO_DATE('2023-08-16 17:15', 'YYYY-MM-DD HH24:MI'), 7, 'C', 2, 2),
  (12, 13, TO_DATE('2023-08-17 19:30', 'YYYY-MM-DD HH24:MI'), 8, 'L', 1, 2),
  (14, 15, TO_DATE('2023-08-18 14:00', 'YYYY-MM-DD HH24:MI'), 9, 'F', 0, 1),
  (16, 17, TO_DATE('2023-08-19 16:45', 'YYYY-MM-DD HH24:MI'), 10, 'C', 3, 3),
  (18, 19, TO_DATE('2023-08-20 18:30', 'YYYY-MM-DD HH24:MI'), 11, 'L', 1, 0),
  (20, 1, TO_DATE('2023-08-21 20:15', 'YYYY-MM-DD HH24:MI'), 12, 'C', 2, 2),
  (2, 3, TO_DATE('2023-08-22 15:30', 'YYYY-MM-DD HH24:MI'), 13, 'F', 0, 1),
  (4, 5, TO_DATE('2023-08-23 17:45', 'YYYY-MM-DD HH24:MI'), 14, 'C', 2, 3),
  (6, 7, TO_DATE('2023-08-24 19:00', 'YYYY-MM-DD HH24:MI'), 15, 'L', 3, 1),
  (8, 9, TO_DATE('2023-08-25 13:15', 'YYYY-MM-DD HH24:MI'), 16, 'C', 1, 1),
  (10, 11, TO_DATE('2023-08-26 16:30', 'YYYY-MM-DD HH24:MI'), 17, 'F', 2, 0),
  (12, 13, TO_DATE('2023-08-27 18:45', 'YYYY-MM-DD HH24:MI'), 18, 'C', 0, 2),
  (14, 15, TO_DATE('2023-08-28 21:00', 'YYYY-MM-DD HH24:MI'), 19, 'L', 1, 1),
  (16, 17, TO_DATE('2023-08-29 14:15', 'YYYY-MM-DD HH24:MI'), 20, 'C', 2, 3);

INSERT INTO xEVENTS (matchID, eventType, playerID, regularTime, adittionalTime)
VALUES 
  (1, 'G', 1, 23, 2),
  (1, 'YC', 2, 45, 0),
  (2, 'G', 3, 60, 3),
  (2, 'RC', 4, 75, 1),
  (3, 'G', 5, 30, 0),
  (3, 'G', 6, 65, 4),
  (4, 'G', 7, 15, 1),
  (4, 'YC', 8, 60, 0),
  (5, 'G', 9, 42, 0),
  (5, 'G', 10, 68, 3),
  (6, 'G', 11, 81, 0),
  (6, 'YC', 12, 20, 0),
  (7, 'G', 13, 50, 2),
  (7, 'RC', 14, 76, 1),
  (8, 'G', 15, 37, 0),
  (8, 'G', 16, 85, 0),
  (9, 'G', 17, 12, 0),
  (9, 'G', 18, 73, 0),
  (10, 'G', 19, 64, 2),
  (10, 'YC', 20, 30, 0),
  (11, 'G', 1, 22, 1),
  (11, 'RC', 2, 56, 0),
  (12, 'G', 3, 75, 0),
  (12, 'G', 4, 90, 2),
  (13, 'G', 5, 41, 0),
  (13, 'G', 6, 69, 1),
  (14, 'G', 7, 53, 0),
  (14, 'YC', 8, 78, 0),
  (15, 'G', 9, 28, 0),
  (15, 'G', 10, 60, 3),
  (16, 'G', 11, 72, 0),
  (16, 'YC', 12, 15, 0),
  (17, 'G', 13, 49, 2),
  (17, 'RC', 14, 71, 1),
  (18, 'G', 15, 36, 0),
  (18, 'G', 16, 88, 0),
  (19, 'G', 17, 19, 0),
  (19, 'G', 18, 82, 0),
  (20, 'G', 19, 62, 2),
  (20, 'YC', 20, 25, 0);

INSERT INTO xFAVORITES_SETTING (userID, favoriteMatchID, notify)
VALUES 
  (1, 1, '1'),
  (1, 3, '0'),
  (2, 2, '1'),
  (2, 4, '0'),
  (3, 5, '1'),
  (3, 7, '1'),
  (4, 6, '0'),
  (4, 8, '1'),
  (5, 9, '1'),
  (5, 11, '0'),
  (6, 10, '1'),
  (6, 12, '1'),
  (7, 13, '0'),
  (7, 15, '0'),
  (8, 14, '1'),
  (8, 16, '0'),
  (9, 17, '1'),
  (9, 19, '1'),
  (10, 18, '0'),
  (10, 20, '1');

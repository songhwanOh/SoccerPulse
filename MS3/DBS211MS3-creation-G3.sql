/*
DBS211NEE - Final Project MS3 - Creation Script
Song Hwan Oh / 116872227 
Sangjune Lee / 123050221 
Ji Ho Nam / 139817217 
Shine Lee / 130563224 
August 12, 2023
*/

/*
providing the scripting to create all the tables, including all constraints and features as designed in the ERD and data dictionary.
*/


CREATE TABLE xCOUNTRY (
    countryID     NUMBER(4)   GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    countryName   VARCHAR(3)  NOT NULL, 
    continent     VARCHAR(2), 
    capitalCity   VARCHAR(30), 
    FIFARanking   NUMBER(3)   NOT NULL, 
    groupName     CHAR(1)     NOT NULL 
);

CREATE TABLE xPERSON 
(
    personID  NUMBER(4)   GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    firstName VARCHAR(40) NOT NULL, 
    lastNAME  VARCHAR(40) NOT NULL, 
    DOB       DATE 
);

CREATE TABLE xPLAYER (
    playerID        NUMBER(4)       PRIMARY KEY,
    shirtNumber     NUMBER(2)       CHECK (shirtNumber BETWEEN 1 AND 99),
    fPosition       VARCHAR(2),
    height          NUMBER(3)       CHECK (height BETWEEN 1 AND 250),
    weight          NUMBER(3)       CHECK (weight BETWEEN 1 AND 250),
    clubTeam        VARCHAR(50),
    dominantFoot    VARCHAR(1)      CHECK (dominantFoot IN ('L', 'R')),
    countryID       NUMBER(4)       NOT NULL CHECK (countryID BETWEEN 1 AND 9999),
    CONSTRAINT fk_country_player FOREIGN KEY (countryID) REFERENCES xCOUNTRY(countryID),
    CONSTRAINT fk_person_player FOREIGN KEY (playerID) REFERENCES xPERSON(personID)
);

CREATE TABLE xUSERS (
    userID              NUMBER(4)      PRIMARY KEY,
    email               VARCHAR(50)    UNIQUE,
    countryResidence    NUMBER(4),
    prefLanguage        VARCHAR(2)     DEFAULT 'EN' NOT NULL,
    nickName            VARCHAR(20)    UNIQUE,
    CONSTRAINT fk_users FOREIGN KEY (countryResidence) REFERENCES xCOUNTRY(countryID),
    CONSTRAINT fk_person_user FOREIGN KEY (userID) REFERENCES xPERSON(personID)
);
    
CREATE TABLE xVENUE (
    venueID   NUMBER(4)       GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY, 
    venueName VARCHAR(25)     NOT NULL, 
    city      VARCHAR(25), 
    vCapacity NUMBER(6)       NOT NULL 
);

CREATE TABLE xMATCH_TYPE 
(
    matchType     CHAR(1)      PRIMARY KEY,
    matchTypeDesc VARCHAR(25)  NOT NULL
);

CREATE TABLE xEVENTS_DESC (
    eventType VARCHAR(2)  NOT NULL PRIMARY KEY, 
    eventDesc VARCHAR(15) NOT NULL
);


CREATE TABLE xMATCH (
    matchID       NUMBER(4)   GENERATED BY DEFAULT ON NULL AS IDENTITY (START WITH 1001 INCREMENT BY 1) PRIMARY KEY, 
    countryID_A   NUMBER(4)   NOT NULL, 
    countryID_B   NUMBER(4)   NOT NULL, 
    dateNTime     DATE        NOT NULL, 
    venueID       NUMBER(11)  NOT NULL, 
    a_score       NUMBER(2)   DEFAULT 0 NOT NULL CHECK (a_score BETWEEN 0 AND 99), 
    b_score       NUMBER(2)   DEFAULT 0 NOT NULL CHECK (b_score BETWEEN 0 AND 99), 
    matchType     CHAR(1)     NOT NULL,
    CONSTRAINT fk_country_match1   FOREIGN KEY (countryID_A) REFERENCES xCOUNTRY(countryID),
    CONSTRAINT fk_country_match2   FOREIGN KEY (countryID_B) REFERENCES xCOUNTRY(countryID),
    CONSTRAINT fk_venue_match     FOREIGN KEY (venueID)     REFERENCES xVENUE(venueID),
    CONSTRAINT fk_match_matchType FOREIGN KEY (matchType)   REFERENCES xMATCH_TYPE(matchType)
);

CREATE TABLE xEVENTS (
    eventID        NUMBER(4)  GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL PRIMARY KEY,
    matchID        NUMBER(4)  NOT NULL,
    eventType      VARCHAR(2) NOT NULL,
    playerID       NUMBER(4)  NOT NULL,
    regularTime    NUMBER     DEFAULT 0 NOT NULL,
    adittionalTime NUMBER     DEFAULT 0 NOT NULL ,
   	CONSTRAINT EVENTS_MATCH_FK      FOREIGN KEY (matchID)   REFERENCES xMATCH(matchID),
	CONSTRAINT EVENTS_EVENTDESC_FK  FOREIGN KEY (eventType) REFERENCES xEVENTS_DESC(eventType),
	CONSTRAINT EVENTS_PLAYER_FK     FOREIGN KEY (playerID)  REFERENCES xPLAYER(playerID)
);

CREATE TABLE xFAVORITES_SETTING (
    userID          NUMBER(4) NOT NULL, 
    favoriteMatchID NUMBER(4) NOT NULL, 
    notify          CHAR(1)   DEFAULT '0' NOT NULL CHECK (notify IN ('0', '1')), 
    PRIMARY KEY (favoriteMatchID, userID),
    CONSTRAINT setting_user_fk  FOREIGN KEY (userID) REFERENCES xUSERS(userID),
    CONSTRAINT setting_match_fk FOREIGN KEY (favoriteMatchID)  REFERENCES xMATCH(matchID)
);


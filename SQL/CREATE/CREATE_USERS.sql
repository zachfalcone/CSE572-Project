/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO USERS VALUES(users_id.nextval, [account type], ...);

-- users table
CREATE TABLE USERS (
    ID INT PRIMARY KEY,
    ACCOUNT_TYPE INT NOT NULL,
    USERNAME VARCHAR2(64) UNIQUE NOT NULL,
    ENCRYPTED_PASSWORD VARCHAR2(512) NOT NULL,
    FIRST_NAME VARCHAR2(64) NOT NULL,
    LAST_NAME VARCHAR2(64) NOT NULL,
    PROFILE_PHOTO BLOB
);

-- sequence to increment id
CREATE SEQUENCE users_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
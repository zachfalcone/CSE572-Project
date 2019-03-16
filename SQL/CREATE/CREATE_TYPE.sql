/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO TYPE VALUES(type_id.nextval, [name], [description]);

-- animal type table
CREATE TABLE TYPE (
    ID INT PRIMARY KEY,
    NAME VARCHAR2(128) UNIQUE NOT NULL,
    DESCRIPTION VARCHAR2(512)
);

-- sequence to increment id
CREATE SEQUENCE type_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
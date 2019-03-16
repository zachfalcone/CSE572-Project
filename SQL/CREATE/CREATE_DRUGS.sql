/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO DRUGS VALUES(drugs_id.nextval, [name], ...);

-- drugs table
CREATE TABLE DRUGS (
    ID INT PRIMARY KEY,
    NAME VARCHAR2(128) NOT NULL,
    DESCRIPTION VARCHAR2(512),
    SYMPTOMS VARCHAR2(512),
    PRICE NUMBER(6, 2) CHECK (PRICE > 0)
);

-- sequence to increment id
CREATE SEQUENCE drugs_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
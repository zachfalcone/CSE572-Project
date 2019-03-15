/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO INSURANCE VALUES(insurance_id.nextval, [name], ...);

-- insurance table
CREATE TABLE INSURANCE (
    ID INT PRIMARY KEY,
    NAME VARCHAR2(64) NOT NULL,
    POLICY_NUMBER VARCHAR(64) NOT NULL,
    ADDRESS VARCHAR2(64),
    ZIP_CODE VARCHAR2(8),
    PHONE_NUMBER VARCHAR2(16)
);

-- sequence to increment id
CREATE SEQUENCE insurance_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
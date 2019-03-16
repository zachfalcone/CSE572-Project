/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO OWNERS VALUES(owners_id.nextval, [first name], ...);

-- owners table
CREATE TABLE OWNERS (
    ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR2(64) NOT NULL,
    LAST_NAME VARCHAR2(64) NOT NULL,
    EMAIL VARCHAR2(128),
    ADDRESS VARCHAR2(64),
    ZIP_CODE VARCHAR2(8),
    INSURANCE_ID INT NOT NULL,
    PHONE_NUMBER VARCHAR2(16),
    CONSTRAINT owners_insurance_id_fk FOREIGN KEY (INSURANCE_ID) REFERENCES INSURANCE(ID)
);

-- sequence to increment id
CREATE SEQUENCE owners_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
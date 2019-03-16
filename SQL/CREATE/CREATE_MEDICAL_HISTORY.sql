/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO MEDICAL_HISTORY VALUES(medical_history_id.nextval, [pet id], ...);

-- medical history table
CREATE TABLE MEDICAL_HISTORY (
    ID INT PRIMARY KEY,
    PET_ID INT UNIQUE NOT NULL,
    ALLERGIES VARCHAR2(512),
    VACCINES VARCHAR2(512),
    CHIPPED NUMBER(1) DEFAULT 0 NOT NULL,
    CONSTRAINT medical_history_pets_id_fk FOREIGN KEY (PET_ID) REFERENCES PETS(ID)
);

-- sequence to increment id
CREATE SEQUENCE medical_history_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
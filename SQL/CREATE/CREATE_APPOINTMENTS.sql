/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO APPOINTMENTS VALUES(appointments_id.nextval, [owner id], ...);

-- appointments table
CREATE TABLE APPOINTMENTS (
    ID INT PRIMARY KEY,
    OWNER_ID INT NOT NULL,
    PET_ID INT NOT NULL,
    STAFF_ID INT NOT NULL,
    DRUG_ID INT NOT NULL,
    APPOINTMENT_DATE DATE NOT NULL,
    CHECK_IN TIMESTAMP,
    CHECK_OUT TIMESTAMP,
    DESCRIPTION VARCHAR2(512),
    CONSTRAINT appointments_owner_id_fk FOREIGN KEY (OWNER_ID) REFERENCES OWNERS(ID),
    CONSTRAINT appointments_pet_id_fk FOREIGN KEY (PET_ID) REFERENCES PETS(ID),
    CONSTRAINT appointments_staff_id_fk FOREIGN KEY (STAFF_ID) REFERENCES STAFF(ID),
    CONSTRAINT appointments_drug_id_fk FOREIGN KEY (DRUG_ID) REFERENCES DRUGS(ID),
    CONSTRAINT check_in_out_ck CHECK ((CHECK_IN IS NULL AND CHECK_OUT IS NULL) OR CHECK_OUT IS NULL OR CHECK_IN < CHECK_OUT)
);

-- sequence to increment id
CREATE SEQUENCE appointments_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
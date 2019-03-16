/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO VETERINARIAN_INFO VALUES([id], [education], [experience], [biography], [schedule]);

-- veterinarian info table
CREATE TABLE VETERINARIAN_INFO (
    ID INT PRIMARY KEY,
    EDUCATION VARCHAR2(512),
    EXPERIENCE VARCHAR2(512),
    BIOGRAPHY VARCHAR2(2048),
    SCHEDULE VARCHAR2(512),
    CONSTRAINT veterinarian_info_user_id_fk FOREIGN KEY (ID) REFERENCES USERS(ID)
);
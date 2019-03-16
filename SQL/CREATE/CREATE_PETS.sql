/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO PETS VALUES(pets_id.nextval, [name], ...);

-- pets table
CREATE TABLE PETS (
    ID INT PRIMARY KEY,
    NAME VARCHAR2(64),
    TYPE_ID INT NOT NULL,
    DOB DATE,
    OWNER_ID INT NOT NULL,
    GENDER CHAR(1) CHECK (GENDER = 'F' OR GENDER = 'M'),
    HEIGHT NUMBER(5, 1) CHECK (HEIGHT > 0),
    WEIGHT NUMBER(5, 1) CHECK (WEIGHT > 0),
    CONSTRAINT pets_type_id_fk FOREIGN KEY (TYPE_ID) REFERENCES TYPE(ID),
    CONSTRAINT pets_owner_id_fk FOREIGN KEY (OWNER_ID) REFERENCES OWNERS(ID)
);

-- sequence to increment id
CREATE SEQUENCE pets_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
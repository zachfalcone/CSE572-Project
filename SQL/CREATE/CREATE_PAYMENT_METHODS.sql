/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO PAYMENT_METHODS VALUES(payment_methods_id.nextval, [owner id], ...);

-- payment methods table
CREATE TABLE PAYMENT_METHODS (
    ID INT PRIMARY KEY,
    OWNER_ID INT NOT NULL,
    CARD_NUMBER VARCHAR2(16) NOT NULL,
    CARD_EXPIRATION DATE NOT NULL,
    CONSTRAINT payment_methods_owner_id_fk FOREIGN KEY (OWNER_ID) REFERENCES OWNERS(ID)
);

-- sequence to increment id
CREATE SEQUENCE payment_methods_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
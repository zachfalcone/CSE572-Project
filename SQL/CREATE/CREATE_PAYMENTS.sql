/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO PAYMENTS VALUES(payments_id.nextval, [billed on], ...);

-- payments table
CREATE TABLE PAYMENTS (
    ID INT PRIMARY KEY,
    BILLED_ON DATE NOT NULL,
    PAYMENT_METHOD_ID INT NOT NULL,
    INSURANCE_ID INT NOT NULL,
    AMOUNT_DUE NUMBER(6, 2) CHECK (AMOUNT_DUE >= 0),
    AMOUNT_PAID NUMBER(6, 2) CHECK (AMOUNT_PAID >= 0),
    CONSTRAINT payments_payment_method_id_fk FOREIGN KEY (PAYMENT_METHOD_ID) REFERENCES PAYMENT_METHODS(ID),
    CONSTRAINT payments_insurance_id_fk FOREIGN KEY (INSURANCE_ID) REFERENCES INSURANCE(ID),
    CONSTRAINT amount_due_paid_ck CHECK (AMOUNT_PAID <= AMOUNT_DUE)
);

-- sequence to increment id
CREATE SEQUENCE payments_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
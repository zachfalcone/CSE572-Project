/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO FEEDBACK VALUES([veterinarian id], [user id], [rating], [comment text]);

-- feedback table
CREATE TABLE FEEDBACK (
    VETERINARIAN_ID INT NOT NULL,
    USER_ID INT NOT NULL,
    RATING NUMBER(1) CHECK (RATING >= 1 AND RATING <= 5),
    COMMENT_TEXT VARCHAR2(512),
    CONSTRAINT feedback_pk PRIMARY KEY (VETERINARIAN_ID, USER_ID),
    CONSTRAINT feedback_veterinarian_id FOREIGN KEY (VETERINARIAN_ID) REFERENCES USERS(ID),
    CONSTRAINT feedback_user_id FOREIGN KEY (USER_ID) REFERENCES USERS(ID)
);
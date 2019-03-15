/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO POSTS VALUES(posts_id.nextval, [user ID], ...);

-- posts table
CREATE TABLE POSTS (
    ID INT PRIMARY KEY,
    USER_ID INT NOT NULL,
    COMMENT_TEXT VARCHAR2(2048) NOT NULL,
    CONSTRAINT posts_users_id_fk FOREIGN KEY (USER_ID) REFERENCES USERS(ID)
);

-- sequence to increment id
CREATE SEQUENCE posts_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
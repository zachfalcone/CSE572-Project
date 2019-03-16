/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO COMMENTS VALUES(comments_id.nextval, [post id], [user id], [comment text]);

-- comments table
CREATE TABLE COMMENTS (
    ID INT PRIMARY KEY,
    POST_ID INT NOT NULL,
    USER_ID INT NOT NULL,
    COMMENT_TEXT VARCHAR2(512) NOT NULL,
    CONSTRAINT comments_post_id_fk FOREIGN KEY (POST_ID) REFERENCES POSTS(ID),
    CONSTRAINT comments_user_id_fk FOREIGN KEY (USER_ID) REFERENCES USERS(ID)
);

-- sequence to increment id
CREATE SEQUENCE comments_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
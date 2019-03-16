/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO LIKES VALUES([post id], [user id]);

-- likes table
CREATE TABLE LIKES (
    POST_ID INT NOT NULL,
    USER_ID INT NOT NULL,
    CONSTRAINT likes_pk PRIMARY KEY (POST_ID, USER_ID),
    CONSTRAINT posts_post_id_fk FOREIGN KEY (POST_ID) REFERENCES POSTS(ID),
    CONSTRAINT users_user_id_fk FOREIGN KEY (USER_ID) REFERENCES USERS(ID)
);
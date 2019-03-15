/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- To insert into table:
-- INSERT INTO JOBS VALUES(jobs_id.nextval, [title], [description]);

-- jobs table
CREATE TABLE JOBS (
    ID INT PRIMARY KEY,
    TITLE VARCHAR(64) NOT NULL,
    DESCRIPTION VARCHAR(512)
);

-- sequence to increment id
CREATE SEQUENCE jobs_id INCREMENT BY 1 START WITH 0 MINVALUE 0;
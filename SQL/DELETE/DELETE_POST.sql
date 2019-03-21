/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Delete post and likes & comments associated with it

DELETE FROM LIKES WHERE POST_ID = 3;
DELETE FROM COMMENTS WHERE POST_ID = 3;
DELETE FROM POSTS WHERE ID = 3;
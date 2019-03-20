/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- View; staff scheduled for Monday through Friday

CREATE OR REPLACE VIEW WEEKDAY_SCHEDULING AS 
SELECT ID, FIRST_NAME, LAST_NAME, SCHEDULE FROM STAFF
WHERE SCHEDULE LIKE '%M%T%W%T%F%';
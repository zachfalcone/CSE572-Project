/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Veterinarians from staff
-- | Last Name | First Name |

SELECT
    S.LAST_NAME AS "Last Name",
    S.FIRST_NAME AS "First Name"
FROM STAFF S
JOIN JOBS J ON J.ID = S.JOB_ID
WHERE J.TITLE = 'Veterinarian'
ORDER BY S.LAST_NAME;
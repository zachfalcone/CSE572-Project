/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Number of pets for each owner
-- | Last Name | First Name | # Pets |

SELECT
    O.LAST_NAME AS "Last Name",
    O.FIRST_NAME AS "First Name",
    COUNT(*) AS "# Pets"
FROM PETS P
JOIN OWNERS O ON P.OWNER_ID = O.ID
GROUP BY O.LAST_NAME, O.FIRST_NAME
ORDER BY O.LAST_NAME;
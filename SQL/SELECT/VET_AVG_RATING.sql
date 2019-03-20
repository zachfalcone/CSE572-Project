/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Average rating of each veterinarian
-- | Last Name | First Name | Average Rating |

SELECT
    V.LAST_NAME AS "Last Name",
    V.FIRST_NAME AS "First Name",
    AVG(F.RATING) AS "Average Rating"
FROM FEEDBACK F
JOIN USERS V ON V.ID = F.VETERINARIAN_ID
GROUP BY V.LAST_NAME, V.FIRST_NAME
ORDER BY LAST_NAME;
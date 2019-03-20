/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Veterinarians with >= 4 stars avg
-- | Average Rating | Last Name | First Name |

SELECT
    AVG(F.RATING) AS "Average Rating",
    V.LAST_NAME AS "Last Name",
    V.FIRST_NAME AS "First Name"
FROM FEEDBACK F
JOIN USERS V ON V.ID = F.VETERINARIAN_ID
GROUP BY V.LAST_NAME, V.FIRST_NAME
HAVING AVG(F.RATING) >= 4
ORDER BY AVG(F.RATING) DESC, V.LAST_NAME;
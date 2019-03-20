/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Insurance company of each owner
-- | Owner Name | Insurance Name |

SELECT
    O.LAST_NAME || ', ' || O.FIRST_NAME AS "Owner Name",
    I.NAME AS "Insurance Name"
FROM OWNERS O
JOIN INSURANCE I ON O.INSURANCE_ID = I.ID
ORDER BY O.LAST_NAME;
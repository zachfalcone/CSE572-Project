/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Pets checked in, but not checked out yet
-- | Checked in at | Pet Name | Owner Name |

SELECT
    TO_CHAR(A.CHECK_IN, 'FMHH:MI AM MM/DD/YYYY') AS "Checked in at",
    P.NAME AS "Pet Name",
    O.LAST_NAME || ', ' || O.FIRST_NAME AS "Owner Name"
FROM APPOINTMENTS A
JOIN PETS P ON P.ID = A.PET_ID
JOIN OWNERS O ON O.ID = P.OWNER_ID
WHERE A.CHECK_OUT IS NULL
ORDER BY CHECK_IN;
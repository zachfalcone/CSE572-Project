/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Prescriptions prescribed
-- | Prescribed | Pet Name | Owner Name | Drug Name | Drug Price |

SELECT
    TO_CHAR(A.CHECK_OUT, 'FMMM/DD/YYYY') AS "Prescribed",
    P.NAME AS "Pet Name",
    O.FIRST_NAME || ' ' || O.LAST_NAME AS "Owner Name",
    D.NAME AS "Drug Name",
    TO_CHAR(D.PRICE, 'FM$9999990.00') AS "Drug Price"
FROM APPOINTMENTS A
JOIN PETS P ON P.ID = A.PET_ID
JOIN OWNERS O ON O.ID = P.OWNER_ID
JOIN DRUGS D ON D.ID = A.DRUG_ID
WHERE A.CHECK_OUT IS NOT NULL
ORDER BY A.CHECK_OUT DESC;
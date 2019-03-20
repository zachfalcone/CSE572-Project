/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Number of owners insured by insurance company
-- | Insurance Company | # Owners Insured By |

SELECT
    I.NAME AS "Insurance Company",
    COUNT(*) AS "# Owners Insured By"
FROM OWNERS O
JOIN INSURANCE I ON I.ID = O.INSURANCE_ID
GROUP BY I.NAME
ORDER BY I.NAME;
/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Owners who owe $10 or more
-- | Amount Due | Last Name | First Name |

SELECT
    TO_CHAR(SUM(P.AMOUNT_DUE) - SUM(P.AMOUNT_PAID), 'FM$9999990.00') AS "Amount Due",
    O.LAST_NAME AS "Last Name",
    O.FIRST_NAME AS "First Name"
FROM PAYMENTS P
JOIN PAYMENT_METHODS PM ON PM.OWNER_ID = P.PAYMENT_METHOD_ID
JOIN OWNERS O ON O.ID = PM.OWNER_ID
GROUP BY O.LAST_NAME, O.FIRST_NAME
HAVING SUM(P.AMOUNT_DUE) - SUM(P.AMOUNT_PAID) >= 10.00
ORDER BY SUM(P.AMOUNT_DUE) - SUM(P.AMOUNT_PAID) DESC, O.LAST_NAME;
/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Payment methods that have expired
-- | Name | Card Number | Expired |

SELECT
    O.FIRST_NAME || ' ' || O.LAST_NAME AS "Name",
    PM.CARD_NUMBER AS "Card Number",
    PM.CARD_EXPIRATION AS "Expired"
FROM PAYMENT_METHODS PM
JOIN OWNERS O ON O.ID = PM.OWNER_ID
WHERE PM.CARD_EXPIRATION < SYSDATE
ORDER BY PM.CARD_EXPIRATION;
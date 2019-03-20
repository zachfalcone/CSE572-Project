/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Appointments scheduled for today
-- | Pet Name | Owner Name | Owner Phone Number | Owner Email | Appointment With |

SELECT
    P.NAME AS "Pet Name",
    O.FIRST_NAME || ' ' || O.LAST_NAME AS "Owner Name",
    O.PHONE_NUMBER AS "Owner Phone Number",
    O.EMAIL AS "Owner Email",
    S.FIRST_NAME || ' ' || S.LAST_NAME AS "Appointment With"
FROM APPOINTMENTS A
JOIN PETS P ON P.ID = A.PET_ID
JOIN OWNERS O ON O.ID = P.OWNER_ID
JOIN STAFF S ON S.ID = A.STAFF_ID
WHERE TRUNC(A.APPOINTMENT_DATE) = TRUNC(SYSDATE)
ORDER BY P.NAME;
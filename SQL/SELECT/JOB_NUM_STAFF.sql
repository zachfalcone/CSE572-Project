/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Number of staff for each job
-- | Job | # Staff |

SELECT
    J.TITLE AS "Job",
    COUNT(*) AS "# Staff"
FROM STAFF S
JOIN JOBS J ON J.ID = S.JOB_ID
GROUP BY J.TITLE
ORDER BY J.TITLE;
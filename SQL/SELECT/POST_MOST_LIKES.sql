/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Posts ordered by the most likes
-- | # Likes | Posted By | Post |

SELECT
    COUNT(*) AS "# Likes",
    U.USERNAME AS "Posted By",
    P.COMMENT_TEXT AS "Post"
FROM POSTS P
JOIN LIKES L ON L.POST_ID = P.ID
JOIN USERS U ON U.ID = P.USER_ID
GROUP BY U.USERNAME, P.COMMENT_TEXT
ORDER BY COUNT(*) DESC;
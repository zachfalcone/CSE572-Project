/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Posts with who posted and who liked
-- | Post | Posted By | Liked By |

SELECT
    P.COMMENT_TEXT AS "Post",
    PB.USERNAME AS "Posted By",
    LB.USERNAME AS "Liked By"
FROM LIKES L
JOIN POSTS P ON P.ID = L.POST_ID
JOIN USERS PB ON PB.ID = P.USER_ID
JOIN USERS LB ON LB.ID = L.USER_ID;
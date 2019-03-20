/*
 * CSE 572 Winter 2019 Group 6
 * Iron River Animal Hospital
 */

-- Animal types with no description
-- | Type |

SELECT NAME AS "Type" FROM TYPE WHERE DESCRIPTION IS NULL;
SELECT and FROM are the most basic clauses to do searches

(*) to retrait all the colums from the table

; end of a query

SELECT DISTINCT is for the unique values on a table

COUNT if for show the number of rows we have in a specific query, in the mayority of cases is better to combine with distinct
SELECT COUNT(DISTINCT name)

WHERE is one of the fundamentals statement, allow us to specify conditions on colums

COMPARISON OIPERATORS
>= greater than or equal to
<= less than or equal to
!= not equal

LOGICAL OPERATORS
AND
OR 
NOT

(CAPITALIZATION DOES MATTER)

ORDER BY descending or ascending values


LIMIT allow us to limit the numbers of rows in a query and its the last comand to be executed


BETWEEN
used to match a value against a range of values


IN to multiple possible value options instead of OR-OR-OR

NOT IN


LIKE allows us to perform pattern matching
A% start with that letter

%a finish with that letter

__ mission imposible __

example of combination
 WHERE name LIKE '_HER%'
 cheryl
 teresa
 sheri
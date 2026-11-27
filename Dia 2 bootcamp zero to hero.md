most common aggregate functions
AVG- returns average value
COUNT- returns number of values
MAX- returns maximun value
MIN- returns minumun value
SUM- returns the sum of all values
and ROUND to spicify precision

HAVING is the WHERE stament for aggregate functions

JOINS allows us to combine multiple tables
INNER JOINS will result with the set of records that match in both tables
OUTER LEFT/RIGHT JOINS take every from the same table and somrthing in the table b and order those matter
FULL JOINS select everything from both tables
UNIONS

SELECT * FROM tableA
INNER JOIN tableB
ON tableA.col_match = TableB.col_match


SELECT * FROM tableA
FULL OUTER JOIN tableB
ON tableA.col_match = TableB.col_match
WHERE tableA.ad IS null OR tableB.id IS null



AS for get a new name for a culumn
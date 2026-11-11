


/*
===============================================================================================================================================
                                                    # Q11. Biggest Single Number
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** GROUP BY, HAVING, COUNT(), MAX(), Aggregate Functions
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/biggest-single-number/



========================================
## Problem Description :
========================================

--> A single number is a number that appeared only once in the `MyNumbers` table.

--> Write a solution to find the largest single number.

--> If there is no single number, report NULL.

--> Return the result table in the given format.



=======================================
## Table Schema
=======================================


----------------------
**Table: MyNumbers**
----------------------


| Column Name | Type |
|-------------|------|
| num         | int  |


- This table may contain duplicate values (there is no primary key).
- Each row of this table contains an integer.
- A single number is a number that appears exactly once in the table.



===========================
## Example 1
===========================


**Input: MyNumbers**

    +-----+
    | num |
    +-----+
    | 8   |
    | 8   |
    | 3   |
    | 3   |
    | 1   |
    | 4   |
    | 5   |
    | 6   |
    +-----+



**Output**

    +-----+
    | num |
    +-----+
    | 6   |
    +-----+



===============================
## Explanation
===============================

--> The numbers 8 and 3 appear more than once, so they are excluded.

--> The single numbers are 1, 4, 5, and 6.

--> Among these single numbers, 6 is the largest.

--> Therefore, the result is 6.



===========================
## Example 2
===========================


**Input: MyNumbers**

    +-----+
    | num |
    +-----+
    | 8   |
    | 8   |
    | 7   |
    | 7   |
    | 3   |
    | 3   |
    | 3   |
    +-----+



**Output**

    +------+
    | num  |
    +------+
    | NULL |
    +------+



===============================
## Explanation
===============================

--> All numbers appear more than once.

--> There are no single numbers in the table.

--> Therefore, the result is NULL.



===================================
## SQL Requirements
===================================

1. Identify numbers that appear exactly once in the MyNumbers table.
2. Group records based on the num column.
3. Use COUNT() to calculate the frequency of each number.
4. Use HAVING to filter numbers appearing exactly once.
5. Find the maximum value among the remaining numbers.
6. Return NULL if no single number exists.
7. Return the result in a column named num.



===================================
## Expected SQL Concepts
===================================

- GROUP BY
- HAVING
- COUNT()
- MAX()
- Subquery
- NULL Handling



===============================================================================================================================================
*/



:: My Solution :

SELECT 
    MAX(num) As num
FROM (
SELECT 
    num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1
)t

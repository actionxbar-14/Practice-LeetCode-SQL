



/*
===============================================================================================================================================
                                                    # Q10. Triangle Judgement
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** CASE WHEN, Conditional Logic, Arithmetic Operators
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/triangle-judgement/



========================================
## Problem Description :
========================================

--> A pupil Tim gets homework to identify whether three line segments could possibly form a triangle.

--> Write a solution to report for every three line segments whether they can form a triangle.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Triangle**
----------------------


| Column Name | Type |
|-------------|------|
| x           | int  |
| y           | int  |
| z           | int  |


- `(x, y, z)` is the primary key (combination of columns with unique values) for this table.
- Each row of this table contains the lengths of three line segments.



===========================
## Example 1
===========================


**Input: Triangle**

    +----+----+----+
    | x  | y  | z  |
    +----+----+----+
    | 13 | 15 | 30 |
    | 10 | 20 | 15 |
    +----+----+----+



**Output**

    +----+----+----+----------+
    | x  | y  | z  | triangle |
    +----+----+----+----------+
    | 13 | 15 | 30 | No       |
    | 10 | 20 | 15 | Yes      |
    +----+----+----+----------+



===============================
## Explanation
===============================

--> A triangle can be formed only when the sum of any two sides is greater than the third side.

--> For the first row (13, 15, 30):

- 13 + 15 = 28, which is less than 30.
- Therefore, these three line segments cannot form a triangle.

--> For the second row (10, 20, 15):

- 10 + 20 > 15
- 10 + 15 > 20
- 20 + 15 > 10

- All three conditions are satisfied.
- Therefore, these three line segments can form a triangle.



===================================
## SQL Requirements
===================================

1. Retrieve all three side lengths (x, y, z).
2. Check whether the sum of any two sides is greater than the third side.
3. All three conditions must be satisfied to form a valid triangle.
4. Return 'Yes' if the sides can form a triangle; otherwise, return 'No'.
5. Add the result in a new column named triangle.
6. The result can be returned in any order.



===================================
## Expected SQL Concept
===================================

- CASE WHEN
- AND Operator
- Arithmetic Operators
- Triangle Inequality Theorem



===============================================================================================================================================
*/



:: My Solution :

SELECT  
    x,
    y,
    z,
    CASE 
       WHEN (x + y) > z AND (y + z) > x AND (z + x) > y THEN 'Yes'
       ELSE 'No'
    END As triangle
FROM Triangle



/*
===============================================================================================================================================
                                    # Q9. Classes With at Least 5 Students
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** GROUP BY, HAVING, COUNT(), Aggregate Functions
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/classes-with-at-least-5-students/



========================================
## Problem Description :
========================================

--> Write a solution to find all the classes that have at least five students.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Courses**
----------------------


| Column Name | Type    |
|-------------|---------|
| student     | varchar |
| class       | varchar |


- `(student, class)` is the primary key (combination of columns with unique values) for this table.
- Each row of this table indicates the name of a student and the class in which they are enrolled.



===========================
## Example 1
===========================


**Input: Courses**

    +---------+----------+
    | student | class    |
    +---------+----------+
    | A       | Math     |
    | B       | English  |
    | C       | Math     |
    | D       | Biology  |
    | E       | Math     |
    | F       | Computer |
    | G       | Math     |
    | H       | Math     |
    | I       | Math     |
    +---------+----------+



**Output**

    +---------+
    | class   |
    +---------+
    | Math    |
    +---------+



===============================
## Explanation
===============================

--> Math has 6 students (A, C, E, G, H, I), so it is included in the result.

--> English has 1 student, so it is excluded.

--> Biology has 1 student, so it is excluded.

--> Computer has 1 student, so it is excluded.

--> Therefore, only Math satisfies the given condition.



===================================
## SQL Requirements
===================================

1. Count the total number of students enrolled in each class.
2. Group records based on the class column.
3. Include only those classes having at least 5 students.
4. Use the HAVING clause to filter grouped results.
5. Return only the class name.
6. The result can be returned in any order.



===============================================================================================================================================
*/

:: My Solution :


SELECT 
    class
FROM Courses 
GROUP BY class
HAVING COUNT(student) >= 5
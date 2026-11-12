



/*
===============================================================================================================================================
                                                    # Q13. Swap Sex of Employees
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** UPDATE, SET, CASE WHEN, Conditional Logic
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/swap-sex-of-employees/



========================================
## Problem Description :
========================================

--> Write a solution to swap all 'f' and 'm' values in the Salary table.

--> Change all 'f' values to 'm' and all 'm' values to 'f'.

--> The solution must use a single UPDATE statement without using any intermediate temporary tables.

--> You must write a single UPDATE statement and must not use any SELECT statement.



=======================================
## Table Schema
=======================================


----------------------
**Table: Salary**
----------------------


| Column Name | Type |
|-------------|------|
| id          | int  |
| name        | varchar |
| sex         | ENUM |
| salary      | int  |


- `id` is the primary key for this table.
- The `sex` column is an ENUM type with values ('m', 'f').
- Each row contains information about an employee, including their ID, name, sex, and salary.



===========================
## Example 1
===========================


**Input: Salary**

    +----+------+-----+--------+
    | id | name | sex | salary |
    +----+------+-----+--------+
    | 1  | A    | m   | 2500   |
    | 2  | B    | f   | 1500   |
    | 3  | C    | m   | 5500   |
    | 4  | D    | f   | 500    |
    +----+------+-----+--------+



**Output**

    +----+------+-----+--------+
    | id | name | sex | salary |
    +----+------+-----+--------+
    | 1  | A    | f   | 2500   |
    | 2  | B    | m   | 1500   |
    | 3  | C    | f   | 5500   |
    | 4  | D    | m   | 500    |
    +----+------+-----+--------+



===============================
## Explanation
===============================

--> Employee A and Employee C have sex = 'm', so their values are changed to 'f'.

--> Employee B and Employee D have sex = 'f', so their values are changed to 'm'.

--> The id, name, and salary columns remain unchanged.

--> Therefore, all 'm' and 'f' values are successfully swapped.



===================================
## SQL Requirements
===================================

1. Update the Salary table using a single UPDATE statement.
2. Change 'm' to 'f'.
3. Change 'f' to 'm'.
4. Update only the sex column.
5. Do not use SELECT statements.
6. Do not use intermediate temporary tables.



===================================
## Expected SQL Concepts
===================================

- UPDATE Statement
- SET Clause
- CASE WHEN
- Conditional Logic
- IF() Function



===============================================================================================================================================
*/


:: My Solution : 


UPDATE Salary
SET sex = CASE
    WHEN sex = 'm' THEN 'f'
    ELSE 'm'
END;
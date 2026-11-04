


/*
===============================================================================================================================================
                                                    # Q3. Duplicate Emails
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** GROUP BY, HAVING, Aggregate Functions
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/duplicate-emails/



========================================
## Problem Description :
========================================

--> Write a solution to report all the duplicate emails.

--> Note that it's guaranteed that the email field is not NULL.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Person**
----------------------


| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |


- `id` is the primary key (column with unique values) for this table.
- Each row of this table contains an email. The emails will not contain uppercase letters.



===========================
## Example 1
===========================


**Input: Person**

    +----+---------+
    | id | email   |
    +----+---------+
    | 1  | a@b.com |
    | 2  | c@d.com |
    | 3  | a@b.com |
    +----+---------+



**Output**

    +---------+
    | Email   |
    +---------+
    | a@b.com |
    +---------+



===============================
## Explanation
===============================

--> a@b.com is repeated two times, so it is a duplicate email.

--> c@d.com appears only once, so it is not included in the result.



===================================
## SQL Requirements
===================================

1. Identify email addresses that appear more than once.
2. Group records based on the email column.
3. Return only duplicate email addresses.
4. The result can be returned in any order.



===============================================================================================================================================
*/



## My Solution : 



SELECT 
    email As Email
FROM Person
GROUP BY email
HAVING COUNT(id) > 1


/* ===============================================================================================================================================*/


## Optimal Solution : 



SELECT 
    email As Email
FROM Person
GROUP BY email
HAVING COUNT(DISTINCT id) > 1


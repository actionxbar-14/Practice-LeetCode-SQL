


/*
===============================================================================================================================================
                                                    # Q6. Find Customer Referee
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** SQL WHERE Clause, NULL Handling, Comparison Operators
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/find-customer-referee/



========================================
## Problem Description :
========================================

--> Write a solution to find the names of customers who satisfy either of the following conditions:

1. Referred by any customer whose `id != 2`.
2. Not referred by any customer.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Customer**
----------------------


| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |
| referee_id  | int     |


- `id` is the primary key column for this table.
- Each row of this table indicates the ID of a customer, their name, and the ID of the customer who referred them.
- `referee_id` can contain NULL values.



===========================
## Example 1
===========================


**Input: Customer**

    +----+------+------------+
    | id | name | referee_id |
    +----+------+------------+
    | 1  | Will | NULL       |
    | 2  | Jane | NULL       |
    | 3  | Alex | 2          |
    | 4  | Bill | NULL       |
    | 5  | Zack | 1          |
    | 6  | Mark | 2          |
    +----+------+------------+



**Output**

    +------+
    | name |
    +------+
    | Will |
    | Jane |
    | Bill |
    | Zack |
    +------+



===============================
## Explanation
===============================

--> Will, Jane and Bill have NULL values in referee_id, meaning they were not referred by anyone.

--> Zack has referee_id = 1, meaning he was referred by customer 1.

--> Alex and Mark have referee_id = 2, so they are excluded from the result.

--> Therefore, the result contains Will, Jane, Bill and Zack.



===================================
## SQL Requirements
===================================

1. Retrieve customers whose referee_id is not equal to 2.
2. Include customers whose referee_id is NULL.
3. Exclude customers referred by customer with id = 2.
4. Return only the customer name.
5. The result can be returned in any order.



===============================================================================================================================================
*/


:: My Solution : 


SELECT 
    name
FROM Customer
WHERE referee_id != 2 OR
referee_id IS NULL
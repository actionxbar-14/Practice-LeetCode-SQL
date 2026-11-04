


/*
===============================================================================================================================================
                                                    # Q4. Customers Who Never Order
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** SQL Joins, LEFT JOIN, NOT EXISTS
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/customers-who-never-order/



========================================
## Problem Description :
========================================

--> Write a solution to find all customers who never order anything.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Customers**
----------------------


| Column Name | Type    |
|-------------|---------|
| id          | int     |
| name        | varchar |


- `id` is the primary key (column with unique values) for this table.
- Each row of this table indicates the ID and name of a customer.



----------------------
**Table: Orders**
----------------------


| Column Name | Type    |
|-------------|---------|
| id          | int     |
| customerId  | int     |


- `id` is the primary key (column with unique values) for this table.
- `customerId` is a foreign key referencing the `id` column of the Customers table.
- Each row of this table indicates the ID of an order and the ID of the customer who placed it.



===========================
## Example 1
===========================


**Input: Customers**

    +----+-------+
    | id | name  |
    +----+-------+
    | 1  | Joe   |
    | 2  | Henry |
    | 3  | Sam   |
    | 4  | Max   |
    +----+-------+



**Input: Orders**

    +----+------------+
    | id | customerId |
    +----+------------+
    | 1  | 3          |
    | 2  | 1          |
    +----+------------+



**Output**

    +-----------+
    | Customers |
    +-----------+
    | Henry     |
    | Max       |
    +-----------+



===============================
## Explanation
===============================

--> Joe and Sam have placed orders, so they are not included in the result.

--> Henry and Max have never placed any orders, so their names are returned.



===================================
## SQL Requirements
===================================

1. Retrieve customers who do not have any matching records in the Orders table.
2. Match Customers and Orders using Customers.id = Orders.customerId.
3. Return only the customer names.
4. The result can be returned in any order.



===============================================================================================================================================
*/



## My Solution :




SELECT 
    c.name As Customers
FROM Customers As c
WHERE c.id NOT IN (
    SELECT   
        customerId
    FROM Orders
)

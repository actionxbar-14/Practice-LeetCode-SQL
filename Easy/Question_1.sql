




/*

===============================================================================================================================================
                                                            # Q1. Combine Two Tables
===============================================================================================================================================

**Difficulty:** Easy  
**Topic:** SQL Joins  
**Platform:** LeetCode  
**Problem Link:** https://leetcode.com/problems/combine-two-tables/description/



========================================
## Problem Description : 
========================================

--> Write a solution to report the following information for each person in the `Person` table:

- First Name
- Last Name
- City
- State

--> If the address of a `personId` is not present in the `Address` table, report `NULL` instead.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: Person**
----------------------



| Column Name | Type    |
|-------------|---------|
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |


- `personId` is the primary key.
- Each row contains information about a person, including their first and last names.





-------------------------
**Table: Address**
-------------------------


| Column Name | Type    |
|-------------|---------|
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |

- `addressId` is the primary key.
- Each row contains the city and state of a person identified by `personId`.








===========================
## Example 1
===========================


**Input: Person**

    +----------+----------+-----------+
    | personId | lastName | firstName |
    +----------+----------+-----------+
    | 1        | Wang     | Allen     |
    | 2        | Alice    | Bob       |
    +----------+----------+-----------+




**Input: Address**

    +-----------+----------+---------------+------------+
    | addressId | personId | city          | state      |
    +-----------+----------+---------------+------------+
    | 1         | 2        | New York City | New York   |
    | 2         | 3        | Leetcode      | California |
    +-----------+----------+---------------+------------+




**Output**

    +-----------+----------+---------------+----------+
    | firstName | lastName | city          | state    |
    +-----------+----------+---------------+----------+
    | Allen     | Wang     | NULL          | NULL     |
    | Bob       | Alice    | New York City | New York |
    +-----------+----------+---------------+----------+





===============================
## Explanation
===============================




- Person with personId = 1 has no matching record in the Address table. Therefore, city and state are NULL.
- Person with personId = 2 has a matching address. Therefore, city = New York City and state = New York.





===================================
## SQL Requirements
===================================


1. Retrieve all records from the Person table.
2. Match records using personId.
3. Return NULL if the address is unavailable.
4. The result can be returned in any order.







===============================================================================================================================================



:: My Solution : 



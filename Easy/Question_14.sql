


/*
===============================================================================================================================================
                    # Q14. Actors and Directors Who Cooperated At Least Three Times
===============================================================================================================================================

**Difficulty:** Easy
**Topic:** GROUP BY, HAVING, COUNT(), Aggregate Functions
**Platform:** LeetCode
**Problem Link:** https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/



========================================
## Problem Description :
========================================

--> Write a solution to find all the pairs `(actor_id, director_id)` where the actor has cooperated with the director at least three times.

--> Return the result table in any order.



=======================================
## Table Schema
=======================================


----------------------
**Table: ActorDirector**
----------------------


| Column Name | Type |
|-------------|------|
| actor_id    | int  |
| director_id | int  |
| timestamp   | int  |


- `timestamp` is the primary key (column with unique values) for this table.
- Each row indicates that an actor has cooperated with a director at a particular timestamp.
- Multiple rows can exist for the same `(actor_id, director_id)` pair, representing multiple collaborations.



===========================
## Example 1
===========================


**Input: ActorDirector**

    +-------------+-------------+-----------+
    | actor_id    | director_id | timestamp |
    +-------------+-------------+-----------+
    | 1           | 1           | 0         |
    | 1           | 1           | 1         |
    | 1           | 1           | 2         |
    | 1           | 2           | 3         |
    | 1           | 2           | 4         |
    | 2           | 1           | 5         |
    | 2           | 1           | 6         |
    +-------------+-------------+-----------+



**Output**

    +-------------+-------------+
    | actor_id    | director_id |
    +-------------+-------------+
    | 1           | 1           |
    +-------------+-------------+



===============================
## Explanation
===============================

--> Actor 1 and Director 1 cooperated 3 times (timestamps 0, 1, 2).

--> Actor 1 and Director 2 cooperated 2 times (timestamps 3, 4).

--> Actor 2 and Director 1 cooperated 2 times (timestamps 5, 6).

--> Only the pair (1, 1) satisfies the condition of at least 3 collaborations.

--> Therefore, the result contains actor_id = 1 and director_id = 1.



===================================
## SQL Requirements
===================================

1. Retrieve the actor_id and director_id columns.
2. Group records based on both actor_id and director_id.
3. Count the total collaborations for each actor-director pair.
4. Include only pairs with at least 3 collaborations.
5. Use the HAVING clause to filter grouped records.
6. The result can be returned in any order.



===================================
## Expected SQL Concepts
===================================

- GROUP BY
- HAVING
- COUNT()
- Aggregate Functions
- Composite Grouping



===============================================================================================================================================
*/



:: My Solution :

SELECT 
   actor_id,
   director_id
FROM ActorDirector
GROUP BY actor_id , director_id
HAVING COUNT(actor_id) >= 3